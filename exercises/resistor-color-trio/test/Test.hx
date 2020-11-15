package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("Resistor Color Trio", {
			it("Orange and orange and black", {
				var expected = {unit: "ohms", value: 33};
				var result = ResistorColorTrio.label(["orange", "orange", "black"]);
				for (field in Reflect.fields(result))
					Reflect.field(result, field).should.be(Reflect.field(expected, field));
			});
			it("Blue and grey and brown", {
				pending("Skipping");
				var expected = {unit: "ohms", value: 680};
				var result = ResistorColorTrio.label(["blue", "grey", "brown"]);
				for (field in Reflect.fields(result))
					Reflect.field(result, field).should.be(Reflect.field(expected, field));
			});
			it("Red and black and red", {
				pending("Skipping");
				var expected = {unit: "kiloohms", value: 2};
				var result = ResistorColorTrio.label(["red", "black", "red"]);
				for (field in Reflect.fields(result))
					Reflect.field(result, field).should.be(Reflect.field(expected, field));
			});
			it("Green and brown and orange", {
				pending("Skipping");
				var expected = {unit: "kiloohms", value: 51};
				var result = ResistorColorTrio.label(["green", "brown", "orange"]);
				for (field in Reflect.fields(result))
					Reflect.field(result, field).should.be(Reflect.field(expected, field));
			});
			it("Yellow and violet and yellow", {
				pending("Skipping");
				var expected = {unit: "kiloohms", value: 470};
				var result = ResistorColorTrio.label(["yellow", "violet", "yellow"]);
				for (field in Reflect.fields(result))
					Reflect.field(result, field).should.be(Reflect.field(expected, field));
			});
		});
	}
}
