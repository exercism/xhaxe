package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Return specified verse or series of verses", {
			it("verse one - the house that jack built", {
				House.recite(1, 1).should.containExactly(["This is the house that Jack built."]);
			});
			it("verse two - the malt that lay", {
				pending("Skipping");
				House.recite(2, 2).should.containExactly(["This is the malt that lay in the house that Jack built."]);
			});
			it("verse three - the rat that ate", {
				pending("Skipping");
				House.recite(3, 3).should.containExactly(["This is the rat that ate the malt that lay in the house that Jack built."]);
			});
			it("verse four - the cat that killed", {
				pending("Skipping");
				House.recite(4, 4).should.containExactly([
					"This is the cat that killed the rat that ate the malt that lay in the house that Jack built."
				]);
			});
			it("verse five - the dog that worried", {
				pending("Skipping");
				House.recite(5, 5).should.containExactly([
					"This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
				]);
			});
			it("verse six - the cow with the crumpled horn", {
				pending("Skipping");
				House.recite(6, 6).should.containExactly([
					"This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
				]);
			});
			it("verse seven - the maiden all forlorn", {
				pending("Skipping");
				House.recite(7, 7).should.containExactly([
					"This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
				]);
			});
			it("verse eight - the man all tattered and torn", {
				pending("Skipping");
				House.recite(8, 8).should.containExactly([
					"This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
				]);
			});
			it("verse nine - the priest all shaven and shorn", {
				pending("Skipping");
				House.recite(9, 9).should.containExactly([
					"This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
				]);
			});
			it("verse 10 - the rooster that crowed in the morn", {
				pending("Skipping");
				House.recite(10, 10).should.containExactly([
					"This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
				]);
			});
			it("verse 11 - the farmer sowing his corn", {
				pending("Skipping");
				House.recite(11, 11).should.containExactly([
					"This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
				]);
			});
			it("verse 12 - the horse and the hound and the horn", {
				pending("Skipping");
				House.recite(12, 12).should.containExactly([
					"This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
				]);
			});
			it("multiple verses", {
				pending("Skipping");
				House.recite(4, 8).should.containExactly([
					"This is the cat that killed the rat that ate the malt that lay in the house that Jack built.",
					"This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
					"This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
					"This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
					"This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
				]);
			});
			it("full rhyme", {
				pending("Skipping");
				House.recite(1, 12).should.containExactly([
					"This is the house that Jack built.", "This is the malt that lay in the house that Jack built.",
					"This is the rat that ate the malt that lay in the house that Jack built.",
					"This is the cat that killed the rat that ate the malt that lay in the house that Jack built.",
					"This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
					"This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
					"This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
					"This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
					"This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
					"This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
					"This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
					"This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
				]);
			});
		});
	}
}
