package;

import haxe.Exception;

using Lambda;

class Grains {
	public static function square(square: Int): Float {
		if (square < 1 || square > 64) {
			throw new Exception("square must be between 1 and 64");
		}

		return Math.pow(2, square - 1);
	}

	public static function total(): Float {
		return [for (i in 1...65) i].map(square).fold((val, acc) -> val + acc, 0);
	}
}
