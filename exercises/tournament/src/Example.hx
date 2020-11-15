package;

using StringTools;

typedef Tally = {team: String, mp: Int, w: Int, d: Int, l: Int, p: Int};

class Tournament {
    private static var header = formatLine(["Team", "MP", "W", "D", "L", "P"]);

    public static function tally(rows: Array<String>): Array<String> {
        var result = [header];

        for (t in getTallies(rows))
            result.push(formatLine([
                t.team, Std.string(t.mp), Std.string(t.w), Std.string(t.d), Std.string(t.l), Std.string(t.p)
            ]));

        return result;
    } 

    private static function getTallies(entries: Array<String>): Array<Tally> {
        var tallies = new Map<String, Tally>();

        for (entry in entries) {
            var tokens  = entry.split(";");
            var team1   = tokens[0];
            var team2   = tokens[1];
            var outcome = tokens[2];

            // init tallies
            if (!tallies.exists(team1))
                tallies[team1] = {team: team1, mp: 0, w: 0, d: 0, l: 0, p: 0}; 
            if (!tallies.exists(team2))
                tallies[team2] = {team: team2, mp: 0, w: 0, d: 0, l: 0, p: 0};

            // score matches played
            var t1 = tallies[team1];
            var t2 = tallies[team2];
            t1.mp += 1;
            t2.mp += 1;
            // score match outcome
            switch (outcome) {
                case "win":
                    t1.w += 1;
                    t1.p += 3;
                    t2.l += 1;
                case "loss":
                    t1.l += 1;
                    t2.w += 1;
                    t2.p += 3;
                case "draw":
                    t1.d += 1;
                    t1.p += 1;
                    t2.d += 1;
                    t2.p += 1;
            }
        }
        return sortTallies([for (t in tallies) t]);
    }

    // Sort tallies by score or alphabetically if tied
    private static function sortTallies(tallies: Array<Tally>): Array<Tally> {
        tallies.sort((t1, t2) -> switch [t1.p, t2.p] {
            case [p1, p2] if (p1 < p2): 1;
            case [p1, p2] if (p1 > p2): -1;
            default: t1.team > t2.team ? 1 : -1;
        });
        return tallies;
    }

    private static function formatLine(tokens: Array<String>): String {
        var result = "";
        result += StringTools.rpad(tokens[0], " ", 31);
        for (i in 1...tokens.length) {
            result += "|"  + StringTools.lpad(tokens[i], " ", 3) + " ";
        }
        result = StringTools.rtrim(result);
        
        return result;
    }
}
