package;

using buddy.Should;
using Strain.ArrayExt;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("Strain", {
			it("empty keep", {
				[]
				.keep(x -> x < 10).should.containExactly([]);
			});
			it("keep everything", {
				[1, 2, 3]
				.keep(x -> x < 10).should.containExactly([1, 2, 3]);
			});
			it("keep first and last", {
				[1, 2, 3]
				.keep(x -> x % 2 != 0).should.containExactly([1, 3]);
			});
			it("keep neither first nor last", {
				[1, 2, 3, 4, 5]
				.keep(x -> x % 2 == 0).should.containExactly([2, 4]);
			});
			it("keep strings", {
				var words = "apple zebra banana zombies cherimoya zelot".split(" ");
				words.keep(w -> w.charAt(0) == "z").should.containExactly(["zebra", "zombies", "zelot"]);
			});
			it("keep arrays", {
				var expected = [[5, 5, 5], [5, 1, 2], [1, 5, 2], [1, 2, 5]];
				var actual = [[1, 2, 3], [5, 5, 5], [5, 1, 2], [2, 1, 2], [1, 5, 2], [2, 2, 1], [1, 2, 5]];
				actual.keep(x -> x.contains(5)).should.containExactly(expected);
			});
			it("empty discard", {
				[]
				.discard(x -> x < 10).should.containExactly([]);
			});
			it("discard nothing", {
				[1, 2, 3]
				.discard(x -> x > 10).should.containExactly([1, 2, 3]);
			});
			it("discard first and last", {
				[1, 2, 3, 4, 5]
				.discard(x -> x % 2 == 0).should.containExactly([1, 3, 5]);
			});
			it("discard strings", {
				var words = "apple zebra banana zombies cherimoya zelot".split(" ");
				words.discard(w -> w.charAt(0) == "z").should.containExactly(["apple", "banana", "cherimoya"]);
			});
			it("discard arrays", {
				var actual = [[1, 2, 3], [5, 5, 5], [5, 1, 2], [2, 1, 2], [1, 5, 2], [2, 2, 1], [1, 2, 5]];
				var expected = [[1, 2, 3], [2, 1, 2], [2, 2, 1]];
				actual.discard(x -> x.contains(5)).should.containExactly(expected);
			});
		});
	}
}
