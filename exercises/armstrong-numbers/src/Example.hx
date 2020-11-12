package;

class ArmstrongNumbers {
    public static function isArmstrongNumber(number: Int): Bool {
        var numString = Std.string(number);
        var digitCount = numString.length;

        var total = 0.0;
        for (char in numString.split("")) {
            total += Math.pow(Std.parseInt(char), digitCount);
        }

        return total == number;
    }
}