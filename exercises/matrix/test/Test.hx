package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Matrix", {
			it("extract row from one number matrix", {
				Matrix.row("1", 1).should.containExactly([1]);
			});
			xit("can extract row", {
				Matrix.row("1 2\n3 4", 2).should.containExactly([3, 4]);
			});
			xit("extract row where numbers have different widths", {
				Matrix.row("1 2\n10 20", 2).should.containExactly([10, 20]);
			});
			xit("can extract row from non-square matrix with no corresponding column", {
				Matrix.row("1 2 3\n4 5 6\n7 8 9\n8 7 6", 4).should.containExactly([8, 7, 6]);
			});
			xit("extract column from one number matrix", {
				Matrix.column("1", 1).should.containExactly([1]);
			});
			xit("can extract column", {
				Matrix.column("1 2 3\n4 5 6\n7 8 9", 3).should.containExactly([3, 6, 9]);
			});
			xit("can extract column from non-square matrix with no corresponding row", {
				Matrix.column("1 2 3 4\n5 6 7 8\n9 8 7 6", 4).should.containExactly([4, 8, 6]);
			});
			xit("extract column where numbers have different widths", {
				Matrix.column("89 1903 3\n18 3 1\n9 4 800", 2).should.containExactly([1903, 3, 4]);
			});
		});
	}
}
