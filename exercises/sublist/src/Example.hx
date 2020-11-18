package;

class Sublist {
    public static function sublist<T>(listOne: Array<T>, listTwo: Array<T>): String {
        return switch ([listOne, listTwo]) {
            case [a, b] if (a.length == b.length): 
                equals(a, b) ? "equal" : "unequal";
            case [a, b] if (isSublist(a, b)):
                "sublist";
            case [a, b] if (isSuperlist(a, b)):
                "superlist";
            case _:
                "unequal";
        }
    } 

    private static function isSublist<T>(list1: Array<T>, list2: Array<T>): Bool {
        if (list1.length > list2.length)
            return false;
        if (equals(list1, list2.slice(0, list1.length)))
            return true;

        return isSublist(list1, list2.slice(1));
    }

    private static function isSuperlist<T>(list1: Array<T>, list2: Array<T>): Bool {
        if (list1.length < list2.length)
            return false;
        if (equals(list1.slice(0, list2.length), list2))
            return true;

        return isSuperlist(list1.slice(1), list2);
    }

    private static function equals<T>(list1: Array<T>, list2: Array<T>): Bool {
        for (i in 0...list1.length)
            if (list1[i] != list2[i])
                return false;

        return true;
    }
}
