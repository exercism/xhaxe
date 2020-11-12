package;

import haxe.Exception;

enum Nucleotide {
    A; T; C; G;
}

class NucleotideCount {
    public static function nucleotideCounts(strand: String): Map<Nucleotide, Int> {
        var count = [
            for (n in Nucleotide.createAll())
            n => 0
        ];

        for (char in strand.split("")) {
            if (!isValidNucleotide(char))
                throw new Exception("Invalid nucleotide in strand");

            count[Nucleotide.createByName(char)] += 1;
        }

        return count;
    }

    private static inline function isValidNucleotide(input: String): Bool {
        return Nucleotide.getConstructors().contains(input);
    }
}
