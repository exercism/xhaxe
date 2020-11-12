package;

import Allergies.Allergen;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("testing for eggs allergy", {
			it("not allergic to anything", {
				var sut = new Allergies(0);
				sut.allergicTo(Allergen.Eggs).should.be(false);
			});
			it("allergic only to eggs", {
				pending("Skipping");
				var sut = new Allergies(1);
				sut.allergicTo(Allergen.Eggs).should.be(true);
			});
			it("allergic to eggs and something else", {
				pending("Skipping");
				var sut = new Allergies(3);
				sut.allergicTo(Allergen.Eggs).should.be(true);
			});
			it("allergic to something, but not eggs", {
				pending("Skipping");
				var sut = new Allergies(2);
				sut.allergicTo(Allergen.Eggs).should.be(false);
			});
			it("allergic to everything", {
				pending("Skipping");
				var sut = new Allergies(255);
				sut.allergicTo(Allergen.Eggs).should.be(true);
			});
		});
		describe("testing for peanuts allergy", {
			it("testing for peanuts allergy", {
				pending("Skipping");
				var sut = new Allergies(0);
				sut.allergicTo(Allergen.Peanuts).should.be(false);
			});
			it("allergic only to peanuts", {
				pending("Skipping");
				var sut = new Allergies(2);
				sut.allergicTo(Allergen.Peanuts).should.be(true);
			});
			it("allergic to peanuts and something else", {
				pending("Skipping");
				var sut = new Allergies(7);
				sut.allergicTo(Allergen.Peanuts).should.be(true);
			});
			it("allergic to something, but not peanuts", {
				pending("Skipping");
				var sut = new Allergies(5);
				sut.allergicTo(Allergen.Peanuts).should.be(false);
			});
			it("allergic to everything", {
				pending("Skipping");
				var sut = new Allergies(255);
				sut.allergicTo(Allergen.Peanuts).should.be(true);
			});
		});
		describe("testing for shellfish allergy", {
			it("testing for shellfish allergy", {
				pending("Skipping");
				var sut = new Allergies(0);
				sut.allergicTo(Allergen.Shellfish).should.be(false);
			});
			it("allergic only to shellfish", {
				pending("Skipping");
				var sut = new Allergies(4);
				sut.allergicTo(Allergen.Shellfish).should.be(true);
			});
			it("allergic to shellfish and something else", {
				pending("Skipping");
				var sut = new Allergies(14);
				sut.allergicTo(Allergen.Shellfish).should.be(true);
			});
			it("allergic to something, but not shellfish", {
				pending("Skipping");
				var sut = new Allergies(10);
				sut.allergicTo(Allergen.Shellfish).should.be(false);
			});
			it("allergic to everything", {
				pending("Skipping");
				var sut = new Allergies(255);
				sut.allergicTo(Allergen.Shellfish).should.be(true);
			});
		});
		describe("testing for strawberries allergy", {
			it("not allergic to anything", {
				pending("Skipping");
				var sut = new Allergies(0);
				sut.allergicTo(Allergen.Strawberries).should.be(false);
			});
			it("allergic only to strawberries", {
				pending("Skipping");
				var sut = new Allergies(8);
				sut.allergicTo(Allergen.Strawberries).should.be(true);
			});
			it("allergic to strawberries and something else", {
				pending("Skipping");
				var sut = new Allergies(28);
				sut.allergicTo(Allergen.Strawberries).should.be(true);
			});
			it("allergic to something, but not strawberries", {
				pending("Skipping");
				var sut = new Allergies(20);
				sut.allergicTo(Allergen.Strawberries).should.be(false);
			});
			it("allergic to everything", {
				pending("Skipping");
				var sut = new Allergies(255);
				sut.allergicTo(Allergen.Strawberries).should.be(true);
			});
		});
		describe("testing for tomatoes allergy", {
			it("not allergic to anything", {
				pending("Skipping");
				var sut = new Allergies(0);
				sut.allergicTo(Allergen.Tomatoes).should.be(false);
			});
			it("allergic only to tomatoes", {
				pending("Skipping");
				var sut = new Allergies(16);
				sut.allergicTo(Allergen.Tomatoes).should.be(true);
			});
			it("allergic to tomatoes and something else", {
				pending("Skipping");
				var sut = new Allergies(56);
				sut.allergicTo(Allergen.Tomatoes).should.be(true);
			});
			it("allergic to something, but not tomatoes", {
				pending("Skipping");
				var sut = new Allergies(40);
				sut.allergicTo(Allergen.Tomatoes).should.be(false);
			});
			it("allergic to everything", {
				pending("Skipping");
				var sut = new Allergies(255);
				sut.allergicTo(Allergen.Tomatoes).should.be(true);
			});
		});
		describe("testing for chocolate allergy", {
			it("not allergic to anything", {
				pending("Skipping");
				var sut = new Allergies(0);
				sut.allergicTo(Allergen.Chocolate).should.be(false);
			});
			it("allergic only to chocolate", {
				pending("Skipping");
				var sut = new Allergies(32);
				sut.allergicTo(Allergen.Chocolate).should.be(true);
			});
			it("allergic to chocolate and something else", {
				pending("Skipping");
				var sut = new Allergies(112);
				sut.allergicTo(Allergen.Chocolate).should.be(true);
			});
			it("allergic to something, but not chocolate", {
				pending("Skipping");
				var sut = new Allergies(80);
				sut.allergicTo(Allergen.Chocolate).should.be(false);
			});
			it("allergic to everything", {
				pending("Skipping");
				var sut = new Allergies(255);
				sut.allergicTo(Allergen.Tomatoes).should.be(true);
			});
		});
		describe("testing for pollen allergy", {
			it("not allergic to anything", {
				pending("Skipping");
				var sut = new Allergies(0);
				sut.allergicTo(Allergen.Pollen).should.be(false);
			});
			it("allergic only to pollen", {
				pending("Skipping");
				var sut = new Allergies(64);
				sut.allergicTo(Allergen.Pollen).should.be(true);
			});
			it("allergic to pollen and something else", {
				pending("Skipping");
				var sut = new Allergies(224);
				sut.allergicTo(Allergen.Pollen).should.be(true);
			});
			it("allergic to something, but not pollen", {
				pending("Skipping");
				var sut = new Allergies(160);
				sut.allergicTo(Allergen.Pollen).should.be(false);
			});
			it("allergic to everything", {
				pending("Skipping");
				var sut = new Allergies(255);
				sut.allergicTo(Allergen.Pollen).should.be(true);
			});
		});
		describe("testing for cats allergy", {
			it("not allergic to anything", {
				pending("Skipping");
				var sut = new Allergies(0);
				sut.allergicTo(Allergen.Cats).should.be(false);
			});
			it("allergic only to cats", {
				pending("Skipping");
				var sut = new Allergies(128);
				sut.allergicTo(Allergen.Cats).should.be(true);
			});
			it("allergic to cats and something else", {
				pending("Skipping");
				var sut = new Allergies(192);
				sut.allergicTo(Allergen.Cats).should.be(true);
			});
			it("allergic to something, but not cats", {
				pending("Skipping");
				var sut = new Allergies(64);
				sut.allergicTo(Allergen.Cats).should.be(false);
			});
			it("allergic to everything", {
				pending("Skipping");
				var sut = new Allergies(255);
				sut.allergicTo(Allergen.Cats).should.be(true);
			});
		});
		describe("testing for all allergies", {
			it("not allergic to anything", {
				pending("Skipping");
				var sut = new Allergies(0);
				sut.allergies().should().containExactly([]);
			});
			it("just eggs", {
				pending("Skipping");
				var sut = new Allergies(1);
				sut.allergies().should().containExactly([Allergen.Eggs]);
			});
			it("just peanuts", {
				pending("Skipping");
				var sut = new Allergies(2);
				sut.allergies().should().containExactly([Allergen.Peanuts]);
			});
			it("just strawberries", {
				pending("Skipping");
				var sut = new Allergies(8);
				sut.allergies().should().containExactly([Allergen.Strawberries]);
			});
			it("eggs and peanuts", {
				pending("Skipping");
				var sut = new Allergies(3);
				sut.allergies().should().containExactly([Allergen.Eggs, Allergen.Peanuts]);
			});
			it("more than eggs but not peanuts", {
				pending("Skipping");
				var sut = new Allergies(5);
				sut.allergies().should().containExactly([Allergen.Eggs, Allergen.Shellfish]);
			});
			it("lots of stuff", {
				pending("Skipping");
				var sut = new Allergies(248);
				sut.allergies().should().containExactly([
					Allergen.Strawberries,
					Allergen.Tomatoes,
					Allergen.Chocolate,
					Allergen.Pollen,
					Allergen.Cats
				]);
			});
			it("everything", {
				pending("Skipping");
				var sut = new Allergies(255);
				sut.allergies().should().containExactly([
					     Allergen.Eggs,      Allergen.Peanuts,
					Allergen.Shellfish, Allergen.Strawberries,
					 Allergen.Tomatoes,    Allergen.Chocolate,
					   Allergen.Pollen,         Allergen.Cats
				]);
			});
			it("no allergen score parts", {
				pending("Skipping");
				var sut = new Allergies(509);
				sut.allergies().should().containExactly([
					Allergen.Eggs,
					Allergen.Shellfish,
					Allergen.Strawberries,
					Allergen.Tomatoes,
					Allergen.Chocolate,
					Allergen.Pollen,
					Allergen.Cats
				]);
			});
		});
	}
}
