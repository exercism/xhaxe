package;

import haxe.ds.Option;

typedef Node<T> = {
    data:  T,
    left:  Option<Node<T>>,
    right: Option<Node<T>>
}

class BinarySearchTree {
    public static function data<T>(treeData: Array<T>): Node<T> {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }

	public static function sortedData<T>(treeData: Array<T>): Array<T> {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    } 
}
