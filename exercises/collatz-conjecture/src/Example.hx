package;

import haxe.Exception;

class CollatzConjecture {
    public static function steps(number: Int): Int {
        if (number <= 0)
            throw new Exception("Only positive numbers are allowed");

        var steps = 0;
        while (number != 1) {
            steps++;
            number = number % 2 == 0 
                   ? Std.int(number / 2) 
                   : number * 3 + 1;
        }

        return steps;
    } 
}
