package;

class Isogram {
    public static function isIsogram(phrase: String): Bool {
        // remove non-letters
        phrase = ~/[^A-Z]/ig.replace(phrase, "");

        // init letter frequency
        var frequency = new Map<String, Int>();
        for (i in 97...123)
            frequency[String.fromCharCode(i)] = 0;

        // tally frequency
        for (i in 0...phrase.length)
            frequency[phrase.charAt(i).toLowerCase()]++;

        // isograms use any letter once at most, or none
        for (f in frequency) 
            if (f > 1) return false;

        return true;
    } 
}
