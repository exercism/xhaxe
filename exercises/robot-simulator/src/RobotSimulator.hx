package;

typedef RobotState = {
	position:  Position,
	direction: String
}

typedef Position = {
    x: Int, 
    y: Int
}

class RobotStateExt {
    public static function equals(a: RobotState, b: RobotState) {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }
}

class RobotSimulator {
    public static function create(position: Position, direction: String): RobotState {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }

	public static function move(position: Position, instructions: String, direction: String): RobotState {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    } 
}
