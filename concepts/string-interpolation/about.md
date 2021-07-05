While manually concatenating strings in Haxe is possible, Haxe supports [string interpolation][string-interpolation], which provides a shorter and more convenient syntax:

```haxe
var x = 42;
//The following two statements are equivalent:

// manual concatenation
trace("the number is " + x);

// using interpolation
trace('the number is $x');
```

As shown above, interpolated strings are enclosed by single-quote characters (`'`), unlike regular [strings][strings], and may contain special identifiers denoted by the dollar sign (`$`) which trigger interpolation.

It is possible to include whole expressions by using `${expr}`, where `expr` is any valid Haxe expression:

```haxe
trace('the next number is ${x + 1}');
```

To supress interpolation in the case where an actual dollar-sign is desired, `$$` can be used:

```haxe
trace('the price is $$42'); // outputs: the price is $42
```

Lastly, note that string interpolation is a compile-time feature that has no impact on runtime performance. Internally, the Haxe compiler generates the equivalent code as manual concatenation.

[string-interpolation]: https://haxe.org/manual/lf-string-interpolation.html
[strings]: https://haxe.org/manual/std-String.html
