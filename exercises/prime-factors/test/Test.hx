package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("returns prime factors for the given input number", {
			it("no factors", {
				PrimeFactors.factors(1).should.containExactly([]);
			});
			it("prime number", {
				pending("Skipping");
				PrimeFactors.factors(2).should.containExactly([2]);
			});
			it("square of a prime", {
				pending("Skipping");
				PrimeFactors.factors(9).should.containExactly([3, 3]);
			});
			it("cube of a prime", {
				pending("Skipping");
				PrimeFactors.factors(8).should.containExactly([2, 2, 2]);
			});
			it("product of primes and non-primes", {
				pending("Skipping");
				PrimeFactors.factors(12).should.containExactly([2, 2, 3]);
			});
			it("product of primes", {
				pending("Skipping");
				PrimeFactors.factors(901255).should.containExactly([5, 17, 23, 461]);
			});
			it("factors include a large prime", {
				pending("Skipping");
				PrimeFactors.factors(93819012551).should.containExactly([11, 9539, 894119]);
			});
		});
	}
}
