package;

import haxe.Exception;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Collatz Conjecture", {
			it("zero steps for one", {
				CollatzConjecture.steps(1).should.be(0);
			});
			it("divide if even", {
				pending("Skipping");
				CollatzConjecture.steps(16).should.be(4);
			});
			it("even and odd steps", {
				pending("Skipping");
				CollatzConjecture.steps(12).should.be(9);
			});
			it("large number of even and odd steps", {
				pending("Skipping");
				CollatzConjecture.steps(1000000).should.be(152);
			});
			it("zero is an error", {
				pending("Skipping");
				CollatzConjecture.steps.bind(0).should.throwType(Exception);
			});
			it("negative value is an error", {
				pending("Skipping");
				CollatzConjecture.steps.bind(-15).should.throwType(Exception);
			});
		});
	}
}
