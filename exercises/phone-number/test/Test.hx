package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Cleanup user-entered phone numbers", {
			it("cleans the number", {
				PhoneNumber.clean("(223) 456-7890").should.be("2234567890");
			});
			it("cleans numbers with dots", {
				pending("Skipping");
				PhoneNumber.clean("223.456.7890").should.be("2234567890");
			});
			it("cleans numbers with multiple spaces", {
				pending("Skipping");
				PhoneNumber.clean("223 456   7890   ").should.be("2234567890");
			});
			it("invalid when 9 digits", {
				pending("Skipping");
				PhoneNumber.clean.bind("123456789").should.throwValue("incorrect number of digits");
			});
			it("invalid when 11 digits does not start with a 1", {
				pending("Skipping");
				PhoneNumber.clean.bind("22234567890").should.throwValue("11 digits must start with 1");
			});
			it("valid when 11 digits and starting with 1", {
				pending("Skipping");
				PhoneNumber.clean("12234567890").should.be("2234567890");
			});
			it("valid when 11 digits and starting with 1 even with punctuation", {
				pending("Skipping");
				PhoneNumber.clean("+1 (223) 456-7890").should.be("2234567890");
			});
			it("invalid when more than 11 digits", {
				pending("Skipping");
				PhoneNumber.clean.bind("321234567890").should.throwValue("more than 11 digits");
			});
			it("invalid with letters", {
				pending("Skipping");
				PhoneNumber.clean.bind("123-abc-7890").should.throwValue("letters not permitted");
			});
			it("invalid with punctuations", {
				pending("Skipping");
				PhoneNumber.clean.bind("123-@:!-7890").should.throwValue("punctuations not permitted");
			});
			it("invalid if area code starts with 0", {
				pending("Skipping");
				PhoneNumber.clean.bind("(023) 456-7890").should.throwValue("area code cannot start with zero");
			});
			it("invalid if area code starts with 1", {
				pending("Skipping");
				PhoneNumber.clean.bind("(123) 456-7890").should.throwValue("area code cannot start with one");
			});
			it("invalid if exchange code starts with 0", {
				pending("Skipping");
				PhoneNumber.clean.bind("(223) 056-7890").should.throwValue("exchange code cannot start with zero");
			});
			it("invalid if exchange code starts with 1", {
				pending("Skipping");
				PhoneNumber.clean.bind("(223) 156-7890").should.throwValue("exchange code cannot start with one");
			});
			it("invalid if area code starts with 0 on valid 11-digit number", {
				pending("Skipping");
				PhoneNumber.clean.bind("1 (023) 456-7890").should.throwValue("area code cannot start with zero");
			});
			it("invalid if area code starts with 1 on valid 11-digit number", {
				pending("Skipping");
				PhoneNumber.clean.bind("1 (123) 456-7890").should.throwValue("area code cannot start with one");
			});
			it("invalid if exchange code starts with 0 on valid 11-digit number", {
				pending("Skipping");
				PhoneNumber.clean.bind("1 (223) 056-7890").should.throwValue("exchange code cannot start with zero");
			});
			it("invalid if exchange code starts with 1 on valid 11-digit number", {
				pending("Skipping");
				PhoneNumber.clean.bind("1 (223) 156-7890").should.throwValue("exchange code cannot start with one");
			});
		});
	}
}
