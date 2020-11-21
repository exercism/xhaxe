package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Yacht", {
			it("Yacht", {
				Yacht.score([5, 5, 5, 5, 5], "yacht").should.be(50);
			});
			it("Not Yacht", {
				pending("Skipping");
				Yacht.score([1, 3, 3, 2, 5], "yacht").should.be(0);
			});
			it("Ones", {
				pending("Skipping");
				Yacht.score([1, 1, 1, 3, 5], "ones").should.be(3);
			});
			it("Ones, out of order", {
				pending("Skipping");
				Yacht.score([3, 1, 1, 5, 1], "ones").should.be(3);
			});
			it("No ones", {
				pending("Skipping");
				Yacht.score([4, 3, 6, 5, 5], "ones").should.be(0);
			});
			it("Twos", {
				pending("Skipping");
				Yacht.score([2, 3, 4, 5, 6], "twos").should.be(2);
			});
			it("Fours", {
				pending("Skipping");
				Yacht.score([1, 4, 1, 4, 1], "fours").should.be(8);
			});
			it("Yacht counted as threes", {
				pending("Skipping");
				Yacht.score([3, 3, 3, 3, 3], "threes").should.be(15);
			});
			it("Yacht of 3s counted as fives", {
				pending("Skipping");
				Yacht.score([3, 3, 3, 3, 3], "fives").should.be(0);
			});
			it("Sixes", {
				pending("Skipping");
				Yacht.score([2, 3, 4, 5, 6], "sixes").should.be(6);
			});
			it("Full house two small, three big", {
				pending("Skipping");
				Yacht.score([2, 2, 4, 4, 4], "full house").should.be(16);
			});
			it("Full house three small, two big", {
				pending("Skipping");
				Yacht.score([5, 3, 3, 5, 3], "full house").should.be(19);
			});
			it("Two pair is not a full house", {
				pending("Skipping");
				Yacht.score([2, 2, 4, 4, 5], "full house").should.be(0);
			});
			it("Four of a kind is not a full house", {
				pending("Skipping");
				Yacht.score([1, 4, 4, 4, 4], "full house").should.be(0);
			});
			it("Yacht is not a full house", {
				pending("Skipping");
				Yacht.score([2, 2, 2, 2, 2], "full house").should.be(0);
			});
			it("Four of a Kind", {
				pending("Skipping");
				Yacht.score([6, 6, 4, 6, 6], "four of a kind").should.be(24);
			});
			it("Yacht can be scored as Four of a Kind", {
				pending("Skipping");
				Yacht.score([3, 3, 3, 3, 3], "four of a kind").should.be(12);
			});
			it("Full house is not Four of a Kind", {
				pending("Skipping");
				Yacht.score([3, 3, 3, 5, 5], "four of a kind").should.be(0);
			});
			it("Little Straight", {
				pending("Skipping");
				Yacht.score([3, 5, 4, 1, 2], "little straight").should.be(30);
			});
			it("Little Straight as Big Straight", {
				pending("Skipping");
				Yacht.score([1, 2, 3, 4, 5], "big straight").should.be(0);
			});
			it("Four in order but not a little straight", {
				pending("Skipping");
				Yacht.score([1, 1, 2, 3, 4], "little straight").should.be(0);
			});
			it("No pairs but not a little straight", {
				pending("Skipping");
				Yacht.score([1, 2, 3, 4, 6], "little straight").should.be(0);
			});
			it("Minimum is 1, maximum is 5, but not a little straight", {
				pending("Skipping");
				Yacht.score([1, 1, 3, 4, 5], "little straight").should.be(0);
			});
			it("Big Straight", {
				pending("Skipping");
				Yacht.score([4, 6, 2, 5, 3], "big straight").should.be(30);
			});
			it("Big Straight as little straight", {
				pending("Skipping");
				Yacht.score([6, 5, 4, 3, 2], "little straight").should.be(0);
			});
			it("No pairs but not a big straight", {
				pending("Skipping");
				Yacht.score([6, 5, 4, 3, 1], "big straight").should.be(0);
			});
			it("Choice", {
				pending("Skipping");
				Yacht.score([3, 3, 5, 6, 6], "choice").should.be(23);
			});
			it("Yacht as choice", {
				pending("Skipping");
				Yacht.score([2, 2, 2, 2, 2], "choice").should.be(10);
			});
		});
	}
}
