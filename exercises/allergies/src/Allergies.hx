package;

import haxe.EnumFlags;

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
    public function new(score: Int) {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }

    public function allergicTo(allergen: Allergen): Bool {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }

    public function allergies(): Array<Allergen> {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }
}