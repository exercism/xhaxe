package;

class ResistorColor {
	private static final allColors = [
		"black", "brown",    "red", "orange", "yellow",
		"green",  "blue", "violet",   "grey",  "white"
	];

	public static function colorCode(color: String): Int {
		return allColors.indexOf(color);
	}

	public static var colors(default, null) = allColors;
}
