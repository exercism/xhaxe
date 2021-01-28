package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("ability modifier", {
			it("ability modifier for score 3 is -4", {
				DndCharacter.modifier(3).should.be(-4);
			});
			xit("ability modifier for score 4 is -3", {
				DndCharacter.modifier(4).should.be(-3);
			});
			xit("ability modifier for score 5 is -3", {
				DndCharacter.modifier(5).should.be(-3);
			});
			xit("ability modifier for score 6 is -2", {
				DndCharacter.modifier(6).should.be(-2);
			});
			xit("ability modifier for score 7 is -2", {
				DndCharacter.modifier(7).should.be(-2);
			});
			xit("ability modifier for score 8 is -1", {
				DndCharacter.modifier(8).should.be(-1);
			});
			xit("ability modifier for score 9 is -1", {
				DndCharacter.modifier(9).should.be(-1);
			});
			xit("ability modifier for score 10 is 0", {
				DndCharacter.modifier(10).should.be(0);
			});
			xit("ability modifier for score 11 is 0", {
				DndCharacter.modifier(11).should.be(0);
			});
			xit("ability modifier for score 12 is +1", {
				DndCharacter.modifier(12).should.be(1);
			});
			xit("ability modifier for score 13 is +1", {
				DndCharacter.modifier(13).should.be(1);
			});
			xit("ability modifier for score 14 is +2", {
				DndCharacter.modifier(14).should.be(2);
			});
			xit("ability modifier for score 15 is +2", {
				DndCharacter.modifier(15).should.be(2);
			});
			xit("ability modifier for score 16 is +3", {
				DndCharacter.modifier(16).should.be(3);
			});
			xit("ability modifier for score 17 is +3", {
				DndCharacter.modifier(17).should.be(3);
			});
			xit("ability modifier for score 18 is +4", {
				DndCharacter.modifier(18).should.be(4);
			});
		});
		describe("Dnd Character", {
			it("random ability is within range", {
                var ability = DndCharacter.ability();
                (ability >= 3 && ability <= 18).should.be(true);
			});
			xit("random character is valid", {
                var c = DndCharacter.character();
                (c.dexterity    >= 3 && c.dexterity    <= 18).should.be(true);
                (c.wisdom       >= 3 && c.wisdom       <= 18).should.be(true);
                (c.intelligence >= 3 && c.intelligence <= 18).should.be(true);
                (c.charisma     >= 3 && c.charisma     <= 18).should.be(true);
                (c.constitution >= 3 && c.constitution <= 18).should.be(true);
                (c.strength     >= 3 && c.strength     <= 18).should.be(true);

                (c.hitpoints == 10 + DndCharacter.modifier(c.constitution)).should.be(true);
			});
			xit("each ability is only calculated once", {
                var char = DndCharacter.character();
                char.dexterity.should.be(char.dexterity);
                char.wisdom.should.be(char.wisdom);
                char.intelligence.should.be(char.intelligence);
                char.charisma.should.be(char.charisma);
                char.constitution.should.be(char.constitution);
                char.strength.should.be(char.strength);
			});
		});
	}
}
