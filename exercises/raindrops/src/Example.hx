package;

class Raindrops {
    public static function convert(number: Int): String {
        function hasFactor(n) return number % n == 0;

        var result = "";
        if (hasFactor(3))
            result += "Pling";
        if (hasFactor(5))
            result += "Plang";
        if (hasFactor(7))
            result += "Plong";

        return result == "" ? Std.string(number) : result;
    } 
}
