import haxe.Template;
import haxe.Json;
import sys.io.File;
import sys.FileSystem;
import sys.Http;

class TestGen {
    static var exercise: String; 
    static var mainMethod: String;
    static var mainArgs: String;
    static var exerciseStubTmpl = new Template(
"package;

class ::exercise:: {
    public static function ::mainMethod::(::mainArgs::): String {
        throw \"Not Implemented\"; // Delete this statement and write your own implementation.
    }
}"
    );
    static var testTmpl = new Template(
"package;

using buddy.Should;

class Test extends buddy.SingleSuite {
    public function new() {
        describe(\"::exercise::\", {
        ::testCases::});
    }
}"
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
        if (Sys.args().length < 2) {
            Sys.println("Failed to provide an exercise name.");
            return;
        }

        exercise   = Sys.args()[0];
        mainMethod = Sys.args()[1];
        mainArgs   = Sys.args()[2];

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

        //create string for Test.hx
        var testHx = ""; 
        //create string for Exercise.hx
        var exerciseHx = ""; 

        var problemSpec = Json.parse(dataJson);
        var testCases = new Array<String>();
        //populate test cases
        generateTests(cast (problemSpec.cases, Array<Dynamic>), testCases, meta); 
      
        //Create README file
        //Add title of exercise
        //Copy descriptionMd to README
        //copy metaYml Source info to README

        //create .meta/tests.toml
        File.saveContent('${dir}.meta/tests.toml', meta.join(""));

        //create Exercise.hx stub file 
        File.saveContent('${dir}src/${toUpperCamel(exercise)}.hx', exerciseStubTmpl.execute( {
                exercise: toUpperCamel(exercise), 
                mainMethod: mainMethod,
                mainArgs: mainArgs 
            } 
        ));

        //create Test.hx file
        File.saveContent('${dir}test/Test.hx', testTmpl.execute( {
                exercise: toUpperCamel(exercise, " "), 
                testCases: testCases.join("")
            }
        ));

        //copy test.hxml from hello-world
        File.copy('${exercisesDir}hello-world/test.hxml', '${dir}test.hxml');


    }


    private static function generateTests(cases: Array<Dynamic>, testCases: Array<String>, meta: Array<String>) {
        for(testCase in cases) {
            if (testCase.cases == null) {
                //add description to .meta/test.toml
                meta.push('# ${testCase.description}\n');
                //add uuid in double quotes = true to .meta/test.toml
                meta.push('"${testCase.uuid}" = true\n\n');

                //iterate over inputs and add them to array to join later
                var inputs = new Array<Dynamic>();
                for (obj in Reflect.fields(testCase.input)) {
                    inputs.push(wrapString(Reflect.field(testCase.input, obj)));
                }

                var expected = wrapString(testCase.expected);
  
                testCases.push(                        
                    testCaseTmpl.execute( {
                      testCase: testCase.description,
                      testCriteria: '${toUpperCamel(exercise)}.${mainMethod}(${inputs.join(", ")}).should.be(${expected});' 
                    })
                );
            } else {
                //if case has more cases continute to traverse
                generateTests(cast (testCase.cases, Array<Dynamic>), testCases, meta);
            }
        }
    }
    private static function wrapString(obj: Dynamic): Dynamic {
        var type = Type.getClassName(Type.getClass(obj));
        if (type == "String") return '\"${obj}\"';
        else if (type == "Array") {
            var temp = new Array<Dynamic>();
            for (child in cast(obj, Array<Dynamic>)) {
                temp.push(wrapString(child));
            } 
            return temp;
        } 
        else return obj;
    }
    private static function toUpperCamel(string: String, ?seperator: String = ""): String {
        //all multiWord problems uses - as word seperator
        var words = string.split("-");
        var upperWords = new Array<String>();
        for (word in words) upperWords.push('${word.substr(0, 1).toUpperCase()}${word.substr(1, word.length)}');
        return upperWords.join(seperator);
    }
}