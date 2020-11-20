package;

typedef Item  = String;
typedef Verse = String;

class Proverb {
	public static function recite(strings: Array<Item>): Array<Verse> {
		if (strings.length == 0)
			return [];

		var verses = [
			for (i in 0...strings.length - 1)
				'For want of a ${strings[i]} the ${strings[i + 1]} was lost.'
		];
		verses.push('And all for the want of a ${strings[0]}.');

		return verses;
	}
}
