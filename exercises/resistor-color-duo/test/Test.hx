package;

using buddy.Should;

class Test extends buddy.SingleSuite {
    public function new() {
        describe("resistor-color-duo", {
            it("Brown and black", {
                ResistorColorDuo.value(["brown", "black"]).should.be(10);
            });
            it("Blue and gray", {
                pending("Skipping");
                ResistorColorDuo.value(["blue", "grey"]).should.be(68);
            });
            it("Yellow and violet", {
                pending("Skipping");
                ResistorColorDuo.value(["yellow", "violet"]).should.be(47);
            });
            it("Orange and orange", {
                pending("Skipping");
                ResistorColorDuo.value(["orange", "orange"]).should.be(33);
            });
            it("Ignore additional colors", {
                pending("Skipping");
                ResistorColorDuo.value(["green", "brown", "orange"]).should.be(51);
            });
        });
    }
}
