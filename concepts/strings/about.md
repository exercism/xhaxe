# About

[Strings][strings] in Haxe are immutable objects representing text as a sequence of Unicode characters (letters, digits, punctuation, etc.). Double quotes are used to define a `string` instance:

```haxe
var fruit:String = "Apple";
```

Manipulating a string can be done by calling one of its [methods or properties][string-api]. As string values can never change after having been defined, all string manipulation methods will return a new string.

A string is delimited by double quote (`"`) characters. Some special characters need [escaping][escaping] using the backslash (`\`) character. Additionally, Haxe strings are multi-line and allow constructing long string literals easily:

```haxe
var escaped:String = "c:\\test.txt";
var multiline:String = "
- apple
- pear
- banana";
```

The simplest way to concatenate strings is by using the [`+` operator][plus-operator].

```haxe
var name:String = "Jane";
trace("Hello " + name + "!");
// => "Hello Jane!"
```

For more complex string formatting, [string interpolation][interpolation] is preferred. This is done by enclosing the string in single-quote characters (`'`) and use the dollar sign (`$`) to trigger variable interpolation. It is also possible to evaluate whole expressions by using `${expr}`, where `expr` is any valid Haxe expression:

```haxe
var name:String = "Jane";
trace('Hello $name!');
// => "Hello Jane!"
trace('HELLO ${name.toUpperCase()}!');
// => "HELLO JANE!"
```

[strings]: https://code.haxe.org/category/beginner/strings.html
[string-api]: https://api.haxe.org/String.html
[escaping]: https://haxe.org/manual/std-String-literals.html
[plus-operator]: https://haxe.org/manual/expression-operators-binops.html#string-concatenation-operator
