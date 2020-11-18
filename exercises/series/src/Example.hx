package;

class Series {
    public static function slices(sliceLength: Int, series: String): Array<String> {
		if (series.length == 0)
			throw "series cannot be empty";
		if (sliceLength < 0)
			throw "slice length cannot be negative";
		if (sliceLength == 0)
			throw "slice length cannot be zero";
		if (sliceLength > series.length)
			throw "slice length cannot be greater than series length";

		return [
			for (i in 0...series.length - sliceLength + 1)
				series.substr(i, sliceLength)
		];
	} 
}
