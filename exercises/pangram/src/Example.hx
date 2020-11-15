package;

class Pangram {
    public static function isPangram(sentence: String): Bool {
        // remove non-letters
        sentence = ~/[^A-Z]/ig.replace(sentence, "");

        // init letter frequency
        var frequency = new Map<String, Int>();
        for (i in 97...123)
            frequency[String.fromCharCode(i)] = 0;

        // tally frequency
        for (i in 0...sentence.length)
            frequency[sentence.charAt(i).toLowerCase()]++;

        // pangrams use all letters, each once only
        for (f in frequency) 
            if (f == 0) return false;

        return true;
    } 
}
