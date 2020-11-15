package;

using Example.StringExtender;

class StringExtender {
	static public function reverse(value: String): String {
		return [
			for (i in 0...value.length + 1)
				value.charAt(value.length - i)
		].join("");
	}
}

class ReverseString {
	public static function reverse(value: String): String {
		return value.reverse();
	}
}
