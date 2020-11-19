package;

class BeerSong {
	static var specialCases = [
		[
			"No more bottles of beer on the wall, no more bottles of beer.",
			"Go to the store and buy some more, 99 bottles of beer on the wall."
		],
		[
			"1 bottle of beer on the wall, 1 bottle of beer.",
			"Take it down and pass it around, no more bottles of beer on the wall."
		],
		[
			"2 bottles of beer on the wall, 2 bottles of beer.",
			"Take one down and pass it around, 1 bottle of beer on the wall."
		]
	];

	public static function recite(takeDown: Int, startBottles: Int): Array<String> {
		return reciteRec(takeDown, startBottles);
	}

	private static function reciteRec(count:Int, currBottle:Int) {
		return if (count == 0)
			[];
		else if (currBottle < 3)
			specialCases[currBottle].concat(recite(--count, --currBottle));
		else
			verse(currBottle).concat(recite(--count, --currBottle));
	}

	private static function verse(n: Int): Array<String>
		return [
			'$n bottles of beer on the wall, $n bottles of beer.',
			'Take one down and pass it around, ${n - 1} bottles of beer on the wall.'
		];
}
