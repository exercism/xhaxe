package;

using StringTools;

typedef ClockObj = {hour: Int, minute: Int};

class Clock {
    public static function createClock(hour: Int, minute: Int): ClockObj {
        // handle negative time values with rollover
        while (minute < 0) {
            minute += 60;
            hour--;           
        }
        while (hour < 0)
            hour += 24;

        var _minute        = minute % 60; 
        var minuteRollover = Std.int(minute / 60); 
        var _hour          = (hour + minuteRollover) % 24;

        return {hour: _hour, minute: _minute};
    }

    public static function create(hour: Int, minute: Int): String {
        function formatTime(time: Int) {
            return '${StringTools.lpad(Std.string(time), "0", 2)}';
        };
        
        var clock = createClock(hour, minute);
        return '${formatTime(clock.hour)}:${formatTime(clock.minute)}';
    }
    
	public static function add(hour: Int, minute: Int, value: Int): String {
        return create(hour, minute + value);
    }

	public static function subtract(hour: Int, minute: Int, value: Int): String {
        return create(hour, minute - value);
    }

	public static function equal(clock1: ClockObj, clock2: ClockObj): Bool {
        var _clock1 = createClock(clock1.hour, clock1.minute);
        var _clock2 = createClock(clock2.hour, clock2.minute);
        
        return _clock1.hour == _clock2.hour && _clock1.minute == _clock2.minute;
    } 
}
