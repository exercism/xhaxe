package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Series", {
			it("slices of one from one", {
				Series.slices(1, "1").should.containExactly(["1"]);
			});
			it("slices of one from two", {
				pending("Skipping");
				Series.slices(1, "12").should.containExactly(["1", "2"]);
			});
			it("slices of two", {
				pending("Skipping");
				Series.slices(2, "35").should.containExactly(["35"]);
			});
			it("slices of two overlap", {
				pending("Skipping");
				Series.slices(2, "9142").should.containExactly(["91", "14", "42"]);
			});
			it("slices can include duplicates", {
				pending("Skipping");
				Series.slices(3, "777777").should.containExactly(["777", "777", "777", "777"]);
			});
			it("slices of a long series", {
				pending("Skipping");
				Series.slices(5, "918493904243").should.containExactly(["91849", "18493", "84939", "49390", "93904", "39042", "90424", "04243"]);
			});
			it("slice length is too large", {
				pending("Skipping");
				Series.slices.bind(6, "12345").should.throwValue("slice length cannot be greater than series length");
			});
			it("slice length cannot be zero", {
				pending("Skipping");
				Series.slices.bind(0, "12345").should.throwValue("slice length cannot be zero");
			});
			it("slice length cannot be negative", {
				pending("Skipping");
				Series.slices.bind(-1, "123").should.throwValue("slice length cannot be negative");
			});
			it("empty series is invalid", {
				pending("Skipping");
				Series.slices.bind(1, "").should.throwValue("series cannot be empty");
			});
		});
	}
}
