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
        return (a.direction == b.direction) && 
               (a.position.x == b.position.x) && 
               (a.position.y == b.position.y);
    }
}

class RobotSimulator {
    public static function create(position: Position, direction: String): RobotState {
		return {position: position, direction: direction};
    }

	public static function move(position: Position, instructions: String, direction: String): RobotState {
        var state = create(position, direction);
        for (i in instructions.split("")) 
            switch (i) {
                case "R": turn(state, true);
                case "L": turn(state, false);
                case "A": advance(state);
            }

        return state;
    } 

    private static inline function turn(state: RobotState, clockwise: Bool) {
        state.direction = switch (state.direction) {
            case "north": clockwise ? "east"  : "west";
            case "east":  clockwise ? "south" : "north";
            case "south": clockwise ? "west"  : "east";
            case "west":  clockwise ? "north" : "south";
            case _: throw "invalid direction";
        }
    }

    private static inline function advance(state: RobotState) {
        var pos = state.position;
        switch (state.direction) {
            case "north": pos.y++;
            case "east":  pos.x++;
            case "south": pos.y--;
            case "west":  pos.x--;
            case _: throw "invalid direction";
        }
    }
}
