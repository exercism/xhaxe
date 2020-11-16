package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Check if the given string is an isogram", {
			it("empty string", {
				Isogram.isIsogram("").should.be(true);
			});
			it("isogram with only lower case characters", {
				pending("Skipping");
				Isogram.isIsogram("isogram").should.be(true);
			});
			it("word with one duplicated character", {
				pending("Skipping");
				Isogram.isIsogram("eleven").should.be(false);
			});
			it("word with one duplicated character from the end of the alphabet", {
				pending("Skipping");
				Isogram.isIsogram("zzyzx").should.be(false);
			});
			it("longest reported english isogram", {
				pending("Skipping");
				Isogram.isIsogram("subdermatoglyphic").should.be(true);
			});
			it("word with duplicated character in mixed case", {
				pending("Skipping");
				Isogram.isIsogram("Alphabet").should.be(false);
			});
			it("word with duplicated character in mixed case, lowercase first", {
				pending("Skipping");
				Isogram.isIsogram("alphAbet").should.be(false);
			});
			it("hypothetical isogrammic word with hyphen", {
				pending("Skipping");
				Isogram.isIsogram("thumbscrew-japingly").should.be(true);
			});
			it("hypothetical word with duplicated character following hyphen", {
				pending("Skipping");
				Isogram.isIsogram("thumbscrew-jappingly").should.be(false);
			});
			it("isogram with duplicated hyphen", {
				pending("Skipping");
				Isogram.isIsogram("six-year-old").should.be(true);
			});
			it("made-up name that is an isogram", {
				pending("Skipping");
				Isogram.isIsogram("Emily Jung Schwartzkopf").should.be(true);
			});
			it("duplicated character in the middle", {
				pending("Skipping");
				Isogram.isIsogram("accentor").should.be(false);
			});
			it("same first and last characters", {
				pending("Skipping");
				Isogram.isIsogram("angola").should.be(false);
			});
		});
	}
}
