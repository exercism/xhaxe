package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Sum Of Multiples", {
			it("no multiples within limit", {
				SumOfMultiples.sum(1, [3, 5]).should.be(0);
			});
			it("one factor has multiples within limit", {
				pending("Skipping");
				SumOfMultiples.sum(4, [3, 5]).should.be(3);
			});
			it("more than one multiple within limit", {
				pending("Skipping");
				SumOfMultiples.sum(7, [3]).should.be(9);
			});
			it("more than one factor with multiples within limit", {
				pending("Skipping");
				SumOfMultiples.sum(10, [3, 5]).should.be(23);
			});
			it("each multiple is only counted once", {
				pending("Skipping");
				SumOfMultiples.sum(100, [3, 5]).should.be(2318);
			});
			it("a much larger limit", {
				pending("Skipping");
				SumOfMultiples.sum(1000, [3, 5]).should.be(233168);
			});
			it("three factors", {
				pending("Skipping");
				SumOfMultiples.sum(20, [7, 13, 17]).should.be(51);
			});
			it("factors not relatively prime", {
				pending("Skipping");
				SumOfMultiples.sum(15, [4, 6]).should.be(30);
			});
			it("some pairs of factors relatively prime and some not", {
				pending("Skipping");
				SumOfMultiples.sum(150, [5, 6, 8]).should.be(4419);
			});
			it("one factor is a multiple of another", {
				pending("Skipping");
				SumOfMultiples.sum(51, [5, 25]).should.be(275);
			});
			it("much larger factors", {
				pending("Skipping");
				SumOfMultiples.sum(10000, [43, 47]).should.be(2203160);
			});
			it("all numbers are multiples of 1", {
				pending("Skipping");
				SumOfMultiples.sum(100, [1]).should.be(4950);
			});
			it("no factors means an empty sum", {
				pending("Skipping");
				SumOfMultiples.sum(10000, []).should.be(0);
			});
			it("the only multiple of 0 is 0", {
				pending("Skipping");
				SumOfMultiples.sum(1, [0]).should.be(0);
			});
			it("the factor 0 does not affect the sum of multiples of other factors", {
				pending("Skipping");
				SumOfMultiples.sum(4, [3, 0]).should.be(3);
			});
			it("solutions using include-exclude must extend to cardinality greater than 3", {
				pending("Skipping");
				SumOfMultiples.sum(10000, [2, 3, 5, 7, 11]).should.be(39614537);
			});
		});
	}
}
