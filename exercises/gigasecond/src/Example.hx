package;

using DateTools;

class Gigasecond {
    private inline static var gigasecond = 1000000000;

    public static function add(moment: Date): Date {
        return moment.delta(DateTools.seconds(gigasecond));
    }
}