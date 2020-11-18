package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Sublist", {
			it("empty lists", {
				Sublist.sublist([], []).should.be("equal");
			});
			it("empty list within non empty list", {
				pending("Skipping");
				Sublist.sublist([], [1, 2, 3]).should.be("sublist");

			});
			it("non empty list contains empty list", {
				pending("Skipping");
				Sublist.sublist([1, 2, 3], []).should.be("superlist");

			});
			it("list equals itself", {
				pending("Skipping");
				Sublist.sublist([1, 2, 3], [1, 2, 3]).should.be("equal");
			});
			it("different lists", {
				pending("Skipping");
				Sublist.sublist([1, 2, 3], [2, 3, 4]).should.be("unequal");
			});
			it("false start", {
				pending("Skipping");
				Sublist.sublist([1, 2, 5], [0, 1, 2, 3, 1, 2, 5, 6]).should.be("sublist");
			});
			it("consecutive", {
				pending("Skipping");
				Sublist.sublist([1, 1, 2], [0, 1, 1, 1, 2, 1, 2]).should.be("sublist");
			});
			it("sublist at start", {
				pending("Skipping");
				Sublist.sublist([0, 1, 2], [0, 1, 2, 3, 4, 5]).should.be("sublist");
			});
			it("sublist in middle", {
				pending("Skipping");
				Sublist.sublist([2, 3, 4], [0, 1, 2, 3, 4, 5]).should.be("sublist");
			});
			it("sublist at end", {
				pending("Skipping");
				Sublist.sublist([3, 4, 5], [0, 1, 2, 3, 4, 5]).should.be("sublist");
			});
			it("at start of superlist", {
				pending("Skipping");
				Sublist.sublist([0, 1, 2, 3, 4, 5], [0, 1, 2]).should.be("superlist");
			});
			it("in middle of superlist", {
				pending("Skipping");
				Sublist.sublist([0, 1, 2, 3, 4, 5], [2, 3]).should.be("superlist");
			});
			it("at end of superlist", {
				pending("Skipping");
				Sublist.sublist([0, 1, 2, 3, 4, 5], [3, 4, 5]).should.be("superlist");
			});
			it("first list missing element from second list", {
				pending("Skipping");
				Sublist.sublist([1, 3], [1, 2, 3]).should.be("unequal");
			});
			it("second list missing element from first list", {
				pending("Skipping");
				Sublist.sublist([1, 2, 3], [1, 3]).should.be("unequal");
			});
			it("order matters to a list", {
				pending("Skipping");
				Sublist.sublist([1, 2, 3], [3, 2, 1]).should.be("unequal");
			});
			it("same digits but different numbers", {
				pending("Skipping");
				Sublist.sublist([1, 0, 1], [10, 1]).should.be("unequal");
			});
		});
	}
}
