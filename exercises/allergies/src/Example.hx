package;

enum Allergen {
    Eggs;
    Peanuts;
    Shellfish;
    Strawberries;
    Tomatoes;
    Chocolate;
    Pollen;
    Cats;
}

class Allergies {
    private final score: EnumFlags<Allergen>;

    public function new(score: Int) {
        this.score = new EnumFlags<Allergen>(score);
    }

    public function allergicTo(allergen: Allergen): Bool {
        return score.has(allergen);
    }

    public function allergies(): Array<Allergen> {
        return Allergen.createAll().filter(allergicTo);
    }
}