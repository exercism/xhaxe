package;

using Lambda;

class SumOfMultiples {
    public static function sum(limit: Int, factors: Array<Int>): Int {
        function isMultiple(n) return factors.exists(f -> n % f == 0);
        function add (a, b) return a + b;

        var candidates = [for (i in 0...limit) i];
        return candidates.filter(isMultiple).fold(add, 0);
    } 
}
