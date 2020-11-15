package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Pangram", {
			it("empty sentence", {
				Pangram.isPangram("").should.be(false);
			});
			it("perfect lower case", {
				pending("Skipping");
				Pangram.isPangram("abcdefghijklmnopqrstuvwxyz").should.be(true);
			});
			it("only lower case", {
				pending("Skipping");
				Pangram.isPangram("the quick brown fox jumps over the lazy dog").should.be(true);
			});
			it("missing the letter 'x'", {
				pending("Skipping");
				Pangram.isPangram("a quick movement of the enemy will jeopardize five gunboats").should.be(false);
			});
			it("missing the letter 'h'", {
				pending("Skipping");
				Pangram.isPangram("five boxing wizards jump quickly at it").should.be(false);
			});
			it("with underscores", {
				pending("Skipping");
				Pangram.isPangram("the_quick_brown_fox_jumps_over_the_lazy_dog").should.be(true);
			});
			it("with numbers", {
				pending("Skipping");
				Pangram.isPangram("the 1 quick brown fox jumps over the 2 lazy dogs").should.be(true);
			});
			it("missing letters replaced by numbers", {
				pending("Skipping");
				Pangram.isPangram("7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog").should.be(false);
			});
			it("mixed case and punctuation", {
				pending("Skipping");
				Pangram.isPangram("Five quacking Zephyrs jolt my wax bed.").should.be(true);
			});
			it("case insensitive", {
				// pending("Skipping");
				Pangram.isPangram("the quick brown fox jumps over with lazy FX").should.be(false);
			});
		});
	}
}
