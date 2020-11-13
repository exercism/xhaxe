import haxe.Template;
import haxe.Json;
import sys.io.File;
import sys.FileSystem;
import sys.Http;

using StringTools;

class TestGen {
    static var exercise: String; 
    static var exerciseStubTmpl = new Template(
"package;

class ::exercise:: {
    ::methods:: 
}"
    );

    static var methodsTmpl = new Template(
    "public static function ::method::(::args::): ::returnType:: {
        throw \"Not Implemented\"; // Delete this statement and write your own implementation.
    }"
    );

    static var testTmpl = new Template(
"package;

using buddy.Should;

//Created by testgen.hx
class Test extends buddy.SingleSuite {
    public function new() {
        ::stories::
    }
}"
    );

    static var storyTmpl = new Template(
        "describe(\"::story::\", {
        ::testCases::});"
    );

    static var testCaseTmpl = new Template(
        "    it(\"::testCase::\", {
                ::testCriteria::
            });
        "
    );

    public static function main() {
        var dataUrl            = new Template("https://raw.githubusercontent.com/exercism/problem-specifications/master/exercises/::exercise::/canonical-data.json");
        var descriptionUrl     = new Template("https://raw.githubusercontent.com/exercism/problem-specifications/master/exercises/::exercise::/description.md");
        var metaUrl            = new Template("https://raw.githubusercontent.com/exercism/problem-specifications/master/exercises/::exercise::/metadata.yml");
        //check if no args are passed
        if (Sys.args().length < 1) {
            Sys.println("An exercise is required.");
            return;
        }

        exercise       = Sys.args()[0];

        //pull in files from github
        var execute =
            (template: Template) ->
                 return template.execute( { exercise: exercise });  

        var dataJson      = Http.requestUrl(execute(dataUrl)); 
        var descriptionMd = Http.requestUrl(execute(descriptionUrl)); 
        var metaYml       = Http.requestUrl(execute(metaUrl)); 
        
        var exercisesDir = "../../exercises/";
        var dir = '${exercisesDir}${exercise}/';
        
        //create exercise folder
        if (!FileSystem.exists(dir)) {
            FileSystem.createDirectory(dir);
        }
        //create .meta
        if (!FileSystem.exists('${dir}.meta')) {
            FileSystem.createDirectory('${dir}.meta');
        }
        //create src folder
        if (!FileSystem.exists('${dir}src')) {
            FileSystem.createDirectory('${dir}src');
        }
        //create test folder
        if (!FileSystem.exists('${dir}test')) {
            FileSystem.createDirectory('${dir}test');
        }

        //create string for tests.toml; first line is always [canonical-tests]
        var meta = new Array<String>();
        meta.push("[canonical-tests]\n\n");

        var problemSpec = Json.parse(dataJson);
        var testCases = new Map<String, Array<String>>();
        var stories = new Array<String>();
        var methods = new Map<String, { order: Int, method: String} >();
        //populate test cases
        generateTests(cast (problemSpec.cases, Array<Dynamic>), methods, stories, testCases, meta); 
      
        var renderedMethods = new Array<String>();
        for (key in methods.keys()) {
            var method = methods.get(key); 
            renderedMethods.insert(method.order, method.method);
        }

        for (i in 0...stories.length) {
            stories[i] = storyTmpl.execute( {
                    story: stories[i],
                    testCases: testCases.get(stories[i]).join("")
                }
            );
        }

        //create String array for README; add exercise as title 
        var readme = new Array<String>();
        readme.push('# ${toUpperCamel(exercise, " ")}');
        //Copy descriptionMd to README
        readme.push(descriptionMd);
        //extremely naive metadata yaml parsing
        var splitYml = metaYml.split("\n");
        if (splitYml.length > 3) {
            readme.push('## Source');
            readme.push(splitYml[2].split("source:")[1].replace("\"", "").trim());
            readme.push(splitYml[3].split("source_url:")[1].replace("\"", "").trim());
        }
        //Add incomplete blurb
        readme.push("\n## Submitting Incomplete Solutions\nIt's possible to submit an incomplete solution so you can see how others have completed the exercise.");

        //Create README file
        Sys.println("Creating README");
        File.saveContent('${dir}/README.md', readme.join("\n"));

        //create .meta/tests.toml
        Sys.println("Creating .meta/tests.toml");
        File.saveContent('${dir}.meta/tests.toml', meta.join(""));

        //create Exercise.hx stub file 
        var exercisePath = 'src/${toUpperCamel(exercise)}.hx';
        Sys.println("Creating " + exercisePath);
        File.saveContent('${dir}${exercisePath}', exerciseStubTmpl.execute( {
                exercise: toUpperCamel(exercise), 
                methods: renderedMethods.join("\n\n\t")
            } 
        ));

        //create empty Example.hx
        Sys.println('Creating src/Example.hx');
        File.saveContent('${dir}src/Example.hx', exerciseStubTmpl.execute( {
                exercise: toUpperCamel(exercise), 
                methods: renderedMethods.join("\n\n\t")
            } 
        ));

        //create Test.hx file
        Sys.println('Creating test/Test.hx');
        File.saveContent('${dir}test/Test.hx', testTmpl.execute( {
                stories: stories.join("\n\t\t")
            }
        ));

        //copy test.hxml from hello-world
        Sys.println('Copying test.hxml');
        File.copy('${exercisesDir}hello-world/test.hxml', '${dir}test.hxml');


        Sys.println("Generation Successful");
        Sys.println("Don't forget to update config.json!");
    }


    private static function generateTests(cases: Array<Dynamic>, methods: Map<String, { order: Int, method: String}>, stories: Array<String>, testCases: Map<String, Array<String>>, meta: Array<String>, ?story: String) {
        for(testCase in cases) {
            if (testCase.cases == null) {
                //if story does not exist make a new one
                if (story == null) {
                    story = toUpperCamel(exercise, " ");
                }
                if (story != null && !testCases.exists(story)) {
                    stories.push(story);
                    testCases.set(story, new Array<String>());
                } 

                //add description to .meta/test.toml
                meta.push('# ${testCase.description}\n');
                //add uuid in double quotes = true to .meta/test.toml
                meta.push('"${testCase.uuid}" = true\n\n');


                var method = testCase.property; 

                //iterate over inputs and add them to array to join later
                var inputs = new Array<Dynamic>();
                var types = new Array<String>();

                for (obj in Reflect.fields(testCase.input)) {
                    var value = processField(Reflect.field(testCase.input, obj));
                    inputs.push(value.obj);

                    //need the types of inputs for newly found methods
                    if (!methods.exists(method)) {
                        types.push('${obj}: ${value.type}');
                    }
                }

                
                var expected = processField(testCase.expected);
  
                //Check if the method exits otherwise execute template
                //need to check if the type is a Generic Array and warn if this happens
                //This warning may correct itself if the story has multiple cases
                //and the first case happens check against an empty array.
                if (!methods.exists(method) && expected.type != "Array") {
                    var count = 0;
                    for (method in methods.keys()) count++; 
                    methods.set(method, {
                            order: count,
                            method: methodsTmpl.execute( {
                                method: method,
                                args: types.join(", "),
                                returnType: expected.type
                            })
                        }
                    );
                } else if (expected.type == "Array") {
                    Sys.println("WARNING: Unidentifiable generic found for method: " + method);
                    Sys.println("Please verify that it was corrected!");
                }

                var shouldAssert: String;
                if (expected.type.startsWith("Array")) {
                    shouldAssert = "containExactly";
                } else {
                    shouldAssert = "be";
                }
                
                var testCriteria ='${toUpperCamel(exercise)}.${method}(${inputs.join(", ")}).should.${shouldAssert}(${expected.obj});'; 
                if (testCases.get(story).length != 0) {
                    testCriteria = 'pending("Skipping");\n\t\t\t\t' + testCriteria;
                }
                testCases.get(story).push(                        
                    testCaseTmpl.execute( {
                      testCase: testCase.description,
                      testCriteria: testCriteria 
                    })
                );
            } else {
                //if case has more cases continute to traverse
                generateTests(cast (testCase.cases, Array<Dynamic>), methods, stories, testCases, meta, testCase.description);
            }
        }
    }
    private static function processField(obj: Dynamic, ?parent: String, ?tabCount: Int = 4): { type: String, obj: Dynamic } {
        var type = Type.getClassName(Type.getClass(obj));
        // trace(obj + ": " + type);
        if (type == null) {
            //if type comes back null attempt to set it properly
            //this is pretty jank and should probably be refactored to use Std.isOfType
            var isNumeric = ~/^-\d+|^\d+$/;
            if (isNumeric.match('${obj}')) {
                if ('${obj}'.contains(".")) {
                    type = "Float";
                } else {
                    type = "Int";
                }
            }
            else if ('${obj}' == "true" || '${obj}' == "false") {
                type = "Bool";
            }
            else {
                type = Type.getClassName(Type.getClass(Reflect.fields(obj))); 
            }

            if (type == "Array") {
               type = "Object";
            } 
            if (obj == null) {
               type = "Null";
            }           
            if ((type == "Object" || type == "Array") && type == parent) {
                tabCount += 1;
            }
        }
        // trace(obj + ": " + type);

        var indent =
            (count) -> {
                var temp = "";
                for(i in 0...count) temp += "\t";
                return temp;
            }

         obj = switch (type) {
                case "Array":  
                    var temp = new Array<Dynamic>();
                    for (child in cast(obj, Array<Dynamic>)) {
                        var processed = processField(child, type, tabCount); 
                        type = 'Array<${processed.type}>';

                        if (type == 'Array<Int>' || type == 'Array<Float>') {
                            if (temp.length == 0) {
                                temp.push('${indent(tabCount + 1)}${processed.obj}');
                            } else {
                                temp.push('${processed.obj}');
                            }
                        }
                        else {
                            temp.push('${indent(tabCount + 1)}${processed.obj}');
                        }
                    } 
                    trace(type);
                    trace(type == 'Array<Int>');
                    if (type == 'Array<Int>' || type == 'Array<Float>') {
                        '[\n${temp.join(", ")}\n${indent(tabCount)}]';
                    } else {
                        '[\n${temp.join(",\n")}\n${indent(tabCount)}]';
                    }
                case "Object": 
                    var temp = new Array<Dynamic>();
                    for (field in Reflect.fields(obj)) {
                        var value = Reflect.field(obj,field);
                        var processed = processField(value, type, tabCount);
                        //"Object is not a Haxe type so set it to Dynamic"
                        type = "Dynamic";
                        temp.push('${indent(tabCount + 1)}${field}: ${processed.obj}');
                    }
                    '{\n${temp.join(",\n")}\n${indent(tabCount)}}';
                case "String": '\"${obj}\"';
                case _ : obj;
            }
        return { type: type, obj: obj };
    }

    private static function toUpperCamel(string: String, ?seperator: String = ""): String {
        //all multiWord problems uses - as word seperator
        var words = string.split("-");
        var upperWords = new Array<String>();
        for (word in words) upperWords.push('${word.substr(0, 1).toUpperCase()}${word.substr(1, word.length)}');
        return upperWords.join(seperator);
    }
}
