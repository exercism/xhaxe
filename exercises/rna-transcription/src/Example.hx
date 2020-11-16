package;

using Lambda;

class Rna {
    private static var dna2rna = [
        "G" => "C",
        "C" => "G",
        "T" => "A",
        "A" => "U"
    ];

    public static function toRna(dna: String): String {
        return dna.split("")
                  .map(dna2rna.get)
                  .join("");
    } 
}