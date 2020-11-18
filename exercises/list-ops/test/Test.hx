package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("append entries to a list and return the new list", {
			it("empty lists", {
				ListOps.append([], []).should.containExactly([]);
			});
			it("list to empty list", {
				pending("Skipping");
				ListOps.append([], [1, 2, 3, 4]).should.containExactly([1, 2, 3, 4]);
			});
			it("empty list to list", {
				pending("Skipping");
				ListOps.append([1, 2, 3, 4], []).should.containExactly([1, 2, 3, 4]);
			});
			it("non-empty lists", {
				pending("Skipping");
				ListOps.append([1, 2], [2, 3, 4, 5]).should.containExactly([1, 2, 2, 3, 4, 5]);
			});
		});
		describe("concatenate a list of lists", {
			it("empty list", {
				ListOps.concat([]).should.containExactly([]);
			});
			it("list of lists", {
				pending("Skipping");
				ListOps.concat([[1, 2], [3], [], [4, 5, 6]]).should.containExactly([1, 2, 3, 4, 5, 6]);
			});
			it("list of nested lists", {
				pending("Skipping");
				var result = ListOps.concat([[[1], [2]], [[3]], [[]], [[4, 5, 6]]]);
				var expected = [[1], [2], [3], [], [4, 5, 6]];
				result.length.should.be(expected.length);
				for (i in 0...expected.length)
					expected[i].should.containExactly(result[i]);
			});
		});
		describe("filter list returning only values that satisfy the filter function", {
			it("empty list", {
				ListOps.filter([], (x) -> x % 2 == 1).should.containExactly([]);
			});
			it("non-empty list", {
				pending("Skipping");
				ListOps.filter([1, 2, 3, 5], (x) -> x % 2 == 1).should.containExactly([1, 3, 5]);
			});
		});
		describe("returns the length of a list", {
			it("empty list", {
				ListOps.length([]).should.be(0);
			});
			it("non-empty list", {
				pending("Skipping");
				ListOps.length([1, 2, 3, 4]).should.be(4);
			});
		});
		describe("return a list of elements whose values equal the list value transformed by the mapping function", {
			it("empty list", {
				ListOps.map([], (x) -> x + 1).should.containExactly([]);
			});
			it("non-empty list", {
				pending("Skipping");
				ListOps.map([1, 3, 5, 7], (x) -> x + 1).should.containExactly([2, 4, 6, 8]);
			});
		});
		describe("folds (reduces) the given list from the left with a function", {
			it("empty list", {
				ListOps.foldl([], 2, (x, y) -> x * y).should.be(2);
			});
			it("direction independent function applied to non-empty list", {
				pending("Skipping");
				ListOps.foldl([1, 2, 3, 4], 5, (x, y) -> x + y).should.be(15);
			});
			it("direction dependent function applied to non-empty list", {
				pending("Skipping");
				ListOps.foldl([2, 5], 5, (x, y) -> Std.int(x / y)).should.be(0);
			});
		});
		describe("folds (reduces) the given list from the right with a function", {
			it("empty list", {
				ListOps.foldr([], 2, (x, y) -> x * y).should.be(2);
			});
			it("direction independent function applied to non-empty list", {
				pending("Skipping");
				ListOps.foldr([1, 2, 3, 4], 5, (x, y) -> x + y).should.be(15);
			});
			it("direction dependent function applied to non-empty list", {
				pending("Skipping");
				ListOps.foldr([2, 5], 5, (x, y) -> Std.int(x / y)).should.be(2);
			});
		});
		describe("reverse the elements of the list", {
			it("empty list", {
				ListOps.reverse([]).should.containExactly([]);
			});
			it("non-empty list", {
				pending("Skipping");
				ListOps.reverse([1, 3, 5, 7]).should.containExactly([7, 5, 3, 1]);
			});
			it("list of lists is not flattened", {
				pending("Skipping");
				var result = ListOps.reverse([[1, 2], [3], [], [4, 5, 6]]);
				var expected = [[4, 5, 6], [], [3], [1, 2]];
				result.length.should.be(expected.length);
				for (i in 0...expected.length)
					expected[i].should.containExactly(result[i]);
			});
		});
	}
}
