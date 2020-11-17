package;

import haxe.ds.Option;

typedef Node<T> = {
    data:  T,
    left:  Option<Node<T>>,
    right: Option<Node<T>>
}

class BinarySearchTree {
    public static function equals<T>(lhs:Node<T>, rhs:Node<T>): Bool {
        var leftEqual = switch ([lhs.left, rhs.left]) {
            case [Some(l), Some(r)]: equals(l, r);
            case [None, None]      : true;
            case _                 : false;
        };
        var rightEqual = switch ([lhs.right, rhs.right]) {
            case [Some(l), Some(r)]: equals(l, r);
            case [None, None]      : true;
            case _                 : false;
        };

        return lhs.data == rhs.data && leftEqual && rightEqual;
    }
 
    public static function data<T>(treeData: Array<T>): Node<T> {
        var root = mkNode(treeData[0]);
        for (d in treeData.slice(1)) {
            insert(d, root);
        }

        return root;
    }

    public static function insert<T>(data: T, node: Node<T>): Node<T> {
        switch (Reflect.compare(data, node.data)) { 
            case 0:
                switch (node.left) {
                    case None: node.left = Some(mkNode(data));
                    case Some(lowerNode): insert(data, lowerNode);
                }
            case -1:
                switch (node.left) {
                    case None: node.left = Some(mkNode(data));
                    case Some(lowerNode): insert(data, lowerNode);
                }
            case 1:
                switch (node.right) {
                    case None: node.right = Some(mkNode(data));
                    case Some(higherNode): insert(data, higherNode);
                }
        }

        return node;
    }

	public static function sortedData<T>(treeData: Array<T>): Array<T> {
        return sortedDataRec(data(treeData), []);
    } 

	private static function sortedDataRec<T>(node: Node<T>, acc: Array<T>): Array<T> {
        switch(node.left) {
            case Some(v): acc = sortedDataRec(v, acc);
            case None: 
        }
        acc.push(node.data);
        switch (node.right) {
            case Some(v): acc = sortedDataRec(v, acc);
            case None: 
        }

        return acc;
    }

    private static function mkNode<T>(data: T): Node<T> {
        return { data: data, left: None, right: None };
    }
}
