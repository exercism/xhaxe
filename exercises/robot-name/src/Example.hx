package;

class Robot {
    public var name(default, null): String;
    private static var generatedNames = new Map<String, Bool>();

    public function new() {
        reset();
    }

    public function reset(): Void {
        name = generateName();
    }

    private static function generateName(): String {
        var letters = [for (i in 65...95) String.fromCharCode(i)];
        var l1 = letters[Std.random(26)];
        var l2 = letters[Std.random(26)];
        var d1 = Std.random(10);
        var d2 = Std.random(10);
        var d3 = Std.random(10);
        var name = '$l1$l2$d1$d2$d3';

       if (generatedNames.exists(name)) {
           return generateName();
        } else {
            generatedNames[name] = true;
            return name;
        }
    }
}
