import haxe.Template;
import sys.Http;

class TestGen {
    static var dataUrl        = new Template("https://raw.githubusercontent.com/exercism/problem-specifications/master/exercises/::exercise::/canonical-data.json");
    static var descriptionUrl = new Template("https://raw.githubusercontent.com/exercism/problem-specifications/master/exercises/::exercise::/description.md");
    static var metaUrl        = new Template("https://raw.githubusercontent.com/exercism/problem-specifications/master/exercises/::exercise::/metadata.yml");

    public static function main() {
        //check if no args are passed
        if (Sys.args().length < 2) {
            Sys.println("Failed to provide an exercise name.");
            return;
        }

        var mainMethod = Sys.args()[1];

        //pull in files from github
        var execute =
            (template: Template) ->
                 return template.execute( { exercise: Sys.args()[0] });  

        var dataJson      = Http.requestUrl(execute(dataUrl)); 
        var descriptionMd = Http.requestUrl(execute(descriptionUrl)); 
        var metaYml       = Http.requestUrl(execute(metaUrl)); 
        trace(dataJson);
        
        //create exercise folder
        //copy test.hxml from hello-world
        //create .meta
        //create tests.toml; first line is always [canonical-tests]
        //create src folder
        //create Exercise.hx stub file with mainMethod
        //add throw "Not Implemented"; // Delete this statement and write your own implementation.
        //create test folder
        //create Test.hx
        //loop over dataJson cases
        //if case has more cases loop over them
        //add description to .meta/test.toml
        //add uuid in double quotes = true to .meta/test.toml
        //convert expected to proper value
        //add it(description, {mainMethod(inputs...).should.be(expected)})
        //Create README file
        //Add title of exercise
        //Copy descriptionMd to README
        //copy metaYml Source info to README


    }
}