package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Scrabble Score", {
			it("lowercase letter", {
				ScrabbleScore.score("a").should.be(1);
			});
			it("uppercase letter", {
				pending("Skipping");
				ScrabbleScore.score("A").should.be(1);
			});
			it("valuable letter", {
				pending("Skipping");
				ScrabbleScore.score("f").should.be(4);
			});
			it("short word", {
				pending("Skipping");
				ScrabbleScore.score("at").should.be(2);
			});
			it("short, valuable word", {
				pending("Skipping");
				ScrabbleScore.score("zoo").should.be(12);
			});
			it("medium word", {
				pending("Skipping");
				ScrabbleScore.score("street").should.be(6);
			});
			it("medium, valuable word", {
				pending("Skipping");
				ScrabbleScore.score("quirky").should.be(22);
			});
			it("long, mixed-case word", {
				pending("Skipping");
				ScrabbleScore.score("OxyphenButazone").should.be(41);
			});
			it("english-like word", {
				pending("Skipping");
				ScrabbleScore.score("pinata").should.be(8);
			});
			it("empty input", {
				pending("Skipping");
				ScrabbleScore.score("").should.be(0);
			});
			it("entire alphabet available", {
				pending("Skipping");
				ScrabbleScore.score("abcdefghijklmnopqrstuvwxyz").should.be(87);
			});
		});
	}
}
