package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Reverse String", {
			it("an empty string", {
				ReverseString.reverse("").should.be("");
			});
			it("a word", {
				pending("Skipping");
				ReverseString.reverse("robot").should.be("tobor");
			});
			it("a capitalized word", {
				pending("Skipping");
				ReverseString.reverse("Ramen").should.be("nemaR");
			});
			it("a sentence with punctuation", {
				pending("Skipping");
				ReverseString.reverse("I'm hungry!").should.be("!yrgnuh m'I");
			});
			it("a palindrome", {
				pending("Skipping");
				ReverseString.reverse("racecar").should.be("racecar");
			});
			it("an even-sized word", {
				pending("Skipping");
				ReverseString.reverse("drawer").should.be("reward");
			});
		});
	}
}
