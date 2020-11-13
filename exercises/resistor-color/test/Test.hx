package;

using buddy.Should;

class Test extends buddy.SingleSuite {
    public function new() {
        describe("Color codes", {
            it("Black", {
                ResistorColor.colorCode("black").should.be(0);
            });
            it("White", {
                pending("Skipping");
                ResistorColor.colorCode("white").should.be(9);
            });
            it("Orange", {
                pending("Skipping");
                ResistorColor.colorCode("orange").should.be(3);
            });
            it("Colors", {
                pending("Skipping");
                ResistorColor.colors.should.containExactly([
                    "black", "brown",    "red", "orange", "yellow",
                    "green",  "blue", "violet",   "grey",  "white"
                ]);
            });
        });
    }
}
