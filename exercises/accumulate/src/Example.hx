package;

using Example.ArrayExtender;

class ArrayExtender {
	public static function accumulate<T, U>(collection: Array<T>, op: T ->  U): Array<U> {
		return [
			for (i in collection) 
				op(i)
		];
	}
}
