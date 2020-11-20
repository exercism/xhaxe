package;

class ArrayExt {
	public static function keep<T>(array: Array<T>, fun: T -> Bool) {
		return [
			for (item in array)
				if (fun(item)) 
					item
		];
	}

	public static function discard<T>(array: Array<T>, fun: T -> Bool) {
		return [
			for (item in array)
				if (!fun(item)) 
					item
		];
	}
}
