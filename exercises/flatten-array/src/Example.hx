package;

class FlattenArray {
    public static function flatten(array: Array<Dynamic>): Array<Dynamic> {
        var accumulator = [];
        for (item in array) {
            if (isArray(item))
                accumulator = accumulator.concat(flatten(item));
            else if (item == null)
                continue;
            else
                accumulator.push(item);
        }

        return accumulator;
    } 

    private static inline function isArray(obj: Dynamic)
        return switch(Type.typeof(obj)) {
            case TClass(Array): true;
            default:            false; 
        }
}
