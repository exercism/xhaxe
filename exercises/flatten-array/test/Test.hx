package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Flatten Array", {
			it("no nesting", {
				FlattenArray.flatten([0, 1, 2]).should.containExactly([0, 1, 2]);
			});
			it("flattens array with just integers present", {
				pending("Skipping");
				FlattenArray.flatten([1, [2, 3, 4, 5, 6, 7], 8]).should.containExactly([1, 2, 3, 4, 5, 6, 7, 8]);
			});
			it("5 level nesting", {
				pending("Skipping");
				FlattenArray.flatten([0, 2, [[2, 3], 8, 100, 4, [[[50]]]], -2]).should.containExactly([0, 2, 2, 3, 8, 100, 4, 50, -2]);
			});
			it("6 level nesting", {
				pending("Skipping");
				FlattenArray.flatten([1, [2, [[3]], [4, [[5]]], 6, 7], 8]).should.containExactly([1, 2, 3, 4, 5, 6, 7, 8]);
			});
			it("6 level nest list with null values", {
				pending("Skipping");
				FlattenArray.flatten([0, 2, [[2, 3], 8, [[100]], null, [[null]]], -2]).should.containExactly([0, 2, 2, 3, 8, 100, -2]);
			});
			it("all values in nested list are null", {
				pending("Skipping");
				FlattenArray.flatten([null, [[[null]]], null, null, [[null, null], null], null]).should.containExactly([]);
			});
		});
	}
}
