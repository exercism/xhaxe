package;

using Lambda;

class Yacht {
	public static function score(dice: Array<Int>, category: String): Int {
		function sum()
			return dice.fold((x, acc) -> x + acc, 0);
		function count(n)
			return dice.count(x -> x == n);
		function yacht()
			return dice.exists(x -> x != dice[0]) ? 0 : 50;
		function house()
			return dice.exists(x -> count(x) == 2) && dice.exists(x -> count(x) == 3) ? sum() : 0;
		function fourOfKind()
			return 4 * switch (dice.find(x -> count(x) >= 4)) { case null: 0; case n: n; };
		function lstraight()
			return [1, 2, 3, 4, 5].foreach(dice.contains) ? 30 : 0;
		function bstraight()
			return [2, 3, 4, 5, 6].foreach(dice.contains) ? 30 : 0;

		return switch (category) {
			case "ones":            1 * count(1);
			case "twos":            2 * count(2);
			case "threes":          3 * count(3);
			case "fours":           4 * count(4);
			case "fives":           5 * count(5);
			case "sixes":           6 * count(6);
			case "yacht":           yacht();
			case "full house":      house();
			case "four of a kind":  fourOfKind();
			case "little straight": lstraight();
			case "big straight":    bstraight();
			case "choice":          sum();
			case _:                 throw "invalid category";
		}
	}
}
