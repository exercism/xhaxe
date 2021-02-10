# Test Generator
This script will help you port over an exercise from the [Problem Specifications Repo](https://github.com/exercism/problem-specifications).  
The script is run using Haxe's built in interpreter with the `--run` command.  
:warning: **For this generator to work the exercise being ported must have a canonical-data.json.**

The generator takes 1 argument:
```
exercise: The exercise name exactly as it is found in the Problem Spec Repo.
```

An example to generate the acronym exercise:  
```
haxe --run TestGen.hx acronym 
```

If you are on Windows you will need to compile it first to a Sys target due an SSL issue.

Neko compile:
```
haxe.exe --neko testgen.n --main TestGen.hx
```

Neko run:
```
neko.exe testgen.n anagram
```


Workflow:
1. Run testgen for new exercise.
2. Update Example.hx with a solution.
3. Verify all tests run and work as expected with your solution.
4. Update config.json `exercises` array.
5. Make a PR for the updated exercise.
6. A maintainer will review and update the config.json with the difficulty and topics.

**Not every case has been tested so there may be cases where a test is improperly generated.**  

config.json template:
```
 {
      "slug": "EXERCISE NAME",
      "uuid": "UUID",
      "core": false,
      "auto_approve": false,
      "unlocked_by": null,
      "difficulty": 1,
      "topics": []
},
```  

 