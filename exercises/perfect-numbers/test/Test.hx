package;

import haxe.Exception;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Perfect numbers", {
			it("Smallest perfect number is classified correctly", {
				PerfectNumbers.classify(6).should.be("perfect");
			});
			it("Medium perfect number is classified correctly", {
				pending("Skipping");
				PerfectNumbers.classify(28).should.be("perfect");
			});
			it("Large perfect number is classified correctly", {
				pending("Skipping");
				PerfectNumbers.classify(33550336).should.be("perfect");
			});
		});
		describe("Abundant numbers", {
			it("Smallest abundant number is classified correctly", {
				PerfectNumbers.classify(12).should.be("abundant");
			});
			it("Medium abundant number is classified correctly", {
				pending("Skipping");
				PerfectNumbers.classify(30).should.be("abundant");
			});
			it("Large abundant number is classified correctly", {
				pending("Skipping");
				PerfectNumbers.classify(33550335).should.be("abundant");
			});
		});
		describe("Deficient numbers", {
			it("Smallest prime deficient number is classified correctly", {
				PerfectNumbers.classify(2).should.be("deficient");
			});
			it("Smallest non-prime deficient number is classified correctly", {
				pending("Skipping");
				PerfectNumbers.classify(4).should.be("deficient");
			});
			it("Medium deficient number is classified correctly", {
				pending("Skipping");
				PerfectNumbers.classify(32).should.be("deficient");
			});
			it("Large deficient number is classified correctly", {
				pending("Skipping");
				PerfectNumbers.classify(33550337).should.be("deficient");
			});
			it("Edge case (no factors other than itself) is classified correctly", {
				pending("Skipping");
				PerfectNumbers.classify(1).should.be("deficient");
			});
		});
		describe("Invalid inputs", {
			it("Zero is rejected (as it is not a positive integer)", {
				PerfectNumbers.classify.bind(0).should.throwType(Exception);
			});
			it("Negative integer is rejected (as it is not a positive integer)", {
				pending("Skipping");
				PerfectNumbers.classify.bind(-1).should.throwType(Exception);
			});
		});
	}
}
