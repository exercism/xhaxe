package;

class Triangle {
    public static function equilateral(sides: Array<Float>): Bool {
        var a = sides[0];
        var b = sides[1];
        var c = sides[2];

        return if (!validSides(a, b, c))
            false;
        else 
            (a == b) && (b == c);
    }

	public static function isosceles(sides: Array<Float>): Bool {
        var a = sides[0];
        var b = sides[1];
        var c = sides[2];

        return if (!validSides(a, b, c))
            false;
        else 
            (a == b) || (a == c) || (b == c);
    }

	public static function scalene(sides: Array<Float>): Bool {
        var a = sides[0];
        var b = sides[1];
        var c = sides[2];

        return if (!validSides(a, b, c))
            false;
        else 
            (a != b) && (a != c) && (b != c);
    } 

    private static function validSides(a: Float, b: Float, c: Float): Bool {
		return (a > 0 && b > 0 && c > 0) && (a + b > c) && (a + c > b) && (b + c > a);
    }
}
