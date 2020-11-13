package;

class ResistorColorDuo {
	private static final allColors = [
		"black", "brown",    "red", "orange", "yellow",
		"green",  "blue", "violet",   "grey",  "white"
	];

	public static function value(colors: Array<String>): Int {
		var val1 = allColors.indexOf(colors[0]);
		var val2 = allColors.indexOf(colors[1]);

		return Std.parseInt('$val1$val2');
	}
}
