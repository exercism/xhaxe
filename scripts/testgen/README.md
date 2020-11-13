# Test Generator
This script will help you port over an exercise from the [Problem Specifications Repo](https://github.com/exercism/problem-specifications).  
The script is run using Haxe's built in interpreter with the `--run` command.  
:warning: **For this generator to work the exercise being ported must have a canonical-data.json.**

The generator takes 3 args:
1. `exercise`: The exercise name exactly as it's found in the Problem Spec repo.
2. `mainMethod`: A name for the main method that will be tested; you can just use what's in the "property" field in the canonical-data.json. e.g.: `"property":"abbreviate"` 
3. `mainArgs`: A comma delimited string of the arguments that the main method will take. This will match the inputs field in canonical-data.json. e.g.: `"phrase": "Portable Network Graphics"` so it will need a phrase: String

An example to generate the acronym exercise:  
```
haxe --run TestGen.hx acronym abbreviate "phrase: String" 
```

