package;

using Lambda;

class ScrabbleScore {
	static var _scores = [
		"A,E,I,O,U,L,N,R,S,T" => 1,
		"D,G"                 => 2,
		"B,C,M,P"             => 3,
		"F,H,V,W,Y"           => 4,
		"K"                   => 5,
		"J,X"                 => 8,
		"Q,Z"                 => 10
	];
	// transform into per-letter map
	static var scores = [
		for (k => v in _scores)
			for (l in k.split(","))
				l => v
	];

	public static function score(word:String):Int {
		function sum(a, b) return a + b;

		// sum score of each letter
		return word.toUpperCase().split("").map(scores.get).fold(sum, 0);
	}
}
