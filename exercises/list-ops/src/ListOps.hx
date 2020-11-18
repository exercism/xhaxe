package;

class ListOps {
    public static function append<T>(list1: Array<T>, list2: Array<T>): Array<T> {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }

	public static function concat<T>(lists: Array<Array<T>>): Array<T> {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }

	public static function filter<T>(list: Array<T>, fun: T -> Bool): Array<T> {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }

	public static function length<T>(list: Array<T>): Int {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }

	public static function map<T, U>(list: Array<T>, fun: T -> U): Array<U> {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }

	public static function foldl<T, U>(list: Array<T>, initial: U, fun: (U, T) -> T): U {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }

	public static function foldr<T, U>(list: Array<T>, initial: U, fun: (T, U) -> U): U {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }

	public static function reverse<T>(list: Array<T>): Array<T> {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    } 
}
