package;

typedef Character = {
    dexterity: Int,
    wisdom: Int,
    intelligence: Int,
    hitpoints: Int,
    strength: Int,
    charisma: Int,
    constitution: Int
}

class DndCharacter {
    public static function modifier(score: Int): Int {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }

	public static function ability(): Int {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }

	public static function character(): Character {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }
}
