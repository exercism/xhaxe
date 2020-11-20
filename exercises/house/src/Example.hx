package;

class House {
    static var pairs = [
        ["house", "Jack built"],
        ["malt", "lay in"],
        ["rat", "ate"],
        ["cat", "killed"],
        ["dog", "worried"],
        ["cow with the crumpled horn", "tossed"],
        ["maiden all forlorn", "milked"],
        ["man all tattered and torn", "kissed"],
        ["priest all shaven and shorn", "married"],
        ["rooster that crowed in the morn", "woke"],
        ["farmer sowing his corn", "kept"],
        ["horse and the hound and the horn", "belonged to"]
    ];

    public static function recite(startVerse: Int, endVerse: Int): Array<String> {
        return [
            for (i in (startVerse-1)...endVerse)
                reciteOne(i)
        ];
    } 

    private static function reciteOne(verse: Int) {
        var result = new StringBuf();
        for (i in 0...verse+1) {
            var a = pairs[verse-i][0];
            var b = pairs[verse-i][1];
            result.add(' the $a that $b');
        }
        
       return 'This is$result.';
    }
}
