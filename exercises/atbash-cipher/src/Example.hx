package;

using Lambda;

class AtbashCipher {
    static inline var plain  = "abcdefghijklmnopqrstuvwxyz";
    static inline var cipher = "zyxwvutsrqponmlkjihgfedcba";

    public static function encode(phrase: String): String {
        var encoding = phrase.split("").map(x -> transpose(x, plain, cipher)).join("");

        return group(encoding, 5);
    }

	public static function decode(phrase: String): String {
        return phrase.split("").map(x -> transpose(x, cipher, plain)).join("");
    } 

    private static function transpose(char: String, from: String, to: String) {
        // ignore punctuation, spacing, and letter case
        char = ~/[\s.,]/g.replace(char.toLowerCase(), "");

        // only transpose letters
        if (~/[a-z]/.match(char))
            return from.charAt(to.indexOf(char));
        else 
            return char;
    }

    private static function group(str: String, count: Int): String {
        var result = "";
        var chars = str.split("");

        var i = 0;
        while (i < chars.length) {
            result += chars.slice(i, i + count).join("") + " ";
            i += count;
        }

        return StringTools.trim(result);
    }
}
