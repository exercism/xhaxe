package;

using DateTools;
using Lambda;

enum DayOfWeek {
    Sunday;
    Monday;
    Tuesday;
    Wednesday;
    Thursday;
    Friday;
    Saturday;
}

class Meetup {
    public static function meetup(week: String, year: Int, month: Int, dayofweek: String): String {
        month -= 1; // Date.month is zero-based
        var _dayofweek = DayOfWeek.createByName(dayofweek).getIndex();

        var date: Date = null;
        switch (week) {
            case "teenth":
                date = dateBetween(year, month, _dayofweek, 13, 19);
            case "first":
                date = dateBetween(year, month, _dayofweek, 1,  7);
            case "second":
                date = dateBetween(year, month, _dayofweek, 8,  14);
            case "third":
                date = dateBetween(year, month, _dayofweek, 15, 21);
            case "fourth":
                date = dateBetween(year, month, _dayofweek, 22, 28);
            case "last":
                var daysInMonth = new Date(year, month, 1, 0, 0, 0).getMonthDays();
                date = dateBetween(year, month, _dayofweek, daysInMonth-6, daysInMonth);
        }

        return date.format("%Y-%m-%d");
    } 

    private static function dateBetween(year: Int, month: Int, day: Int, start: Int, end: Int): Date {
        var days = [for (i in start...end+1) i];

        var dayBetween = days.find(
            d -> new Date(year, month, d, 0, 0, 0).getDay() == day
        );

        return new Date(year, month, dayBetween, 0, 0, 0);
    }
}
