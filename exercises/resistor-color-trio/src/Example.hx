package;

typedef ResistanceValue = { unit: String, value: Int };

class ResistorColorTrio {
    private static final allColors = [
		"black", "brown",    "red", "orange", "yellow",
		"green",  "blue", "violet",   "grey",  "white"
    ];

    public static function label(colors: Array<String>): ResistanceValue { 
    var val1  = allColors.indexOf(colors[0]);
    var val2  = allColors.indexOf(colors[1]);
    var exp   = allColors.indexOf(colors[2]);
    var value = ((val1 * 10) + val2) * Math.pow(10, exp);

    if (value >= 1000)
        return { unit: "kiloohms", value: Std.int(value / 1000) };
    else
        return { unit: "ohms",     value: Std.int(value) };
    }
} 
