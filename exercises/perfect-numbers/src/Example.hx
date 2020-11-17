package;

import haxe.Exception;
using Lambda;

class PerfectNumbers {
    public static function classify(number: Int): String {
        if (number <= 0)
            throw new Exception("Classification is only possible for positive integers.");

        return switch (number) {
            case n if (aliquotSum(n) > n):  "abundant";
            case n if (aliquotSum(n) < n):  "deficient";
            default:                        "perfect";
        }
    } 

    private static function aliquotSum(number: Int): Int {
		function sum(a, b) return a + b;

		return factors(number).fold(sum, 0);
    }

    private static function factors(number: Int): Array<Int> {
		return [
			for (n in 1...number)
				if (number % n == 0) n
		];
    }
}
