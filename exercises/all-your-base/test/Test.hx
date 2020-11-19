package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("All Your Base", {
			it("single bit one to decimal", {
				AllYourBase.rebase(2, 10, [1]).should.containExactly([1]);
			});
			it("binary to single decimal", {
				pending("Skipping");
				AllYourBase.rebase(2, 10, [1, 0, 1]).should.containExactly([5]);
			});
			it("single decimal to binary", {
				pending("Skipping");
				AllYourBase.rebase(10, 2, [5]).should.containExactly([1, 0, 1]);
			});
			it("binary to multiple decimal", {
				pending("Skipping");
				AllYourBase.rebase(2, 10, [1, 0, 1, 0, 1, 0]).should.containExactly([4, 2]);
			});
			it("decimal to binary", {
				pending("Skipping");
				AllYourBase.rebase(10, 2, [4, 2]).should.containExactly([1, 0, 1, 0, 1, 0]);
			});
			it("trinary to hexadecimal", {
				pending("Skipping");
				AllYourBase.rebase(3, 16, [1, 1, 2, 0]).should.containExactly([2, 10]);
			});
			it("hexadecimal to trinary", {
				pending("Skipping");
				AllYourBase.rebase(16, 3, [2, 10]).should.containExactly([1, 1, 2, 0]);
			});
			it("15-bit integer", {
				pending("Skipping");
				AllYourBase.rebase(97, 73, [3, 46, 60]).should.containExactly([6, 10, 45]);
			});
			it("empty list", {
				pending("Skipping");
				AllYourBase.rebase(2, 10, []).should.containExactly([0]);
			});
			it("single zero", {
				pending("Skipping");
				AllYourBase.rebase(10, 2, [0]).should.containExactly([0]);
			});
			it("multiple zeros", {
				pending("Skipping");
				AllYourBase.rebase(10, 2, [0, 0, 0]).should.containExactly([0]);
			});
			it("leading zeros", {
				pending("Skipping");
				AllYourBase.rebase(7, 10, [0, 6, 0]).should.containExactly([4, 2]);
			});
			it("input base is one", {
				pending("Skipping");
				AllYourBase.rebase.bind(1, 10, [0]).should.throwValue("input base must be >= 2");
			});
			it("input base is zero", {
				pending("Skipping");
				AllYourBase.rebase.bind(0, 10, []).should.throwValue("input base must be >= 2");
			});
			it("input base is negative", {
				pending("Skipping");
				AllYourBase.rebase.bind(-2, 10, [1]).should.throwValue("input base must be >= 2");
			});
			it("negative digit", {
				pending("Skipping");
				AllYourBase.rebase.bind(2, 10, [1, -1, 1, 0, 1, 0]).should.throwValue("all digits must satisfy 0 <= d < input base");
			});
			it("invalid positive digit", {
				pending("Skipping");
				AllYourBase.rebase.bind(2, 10, [1, 2, 1, 0, 1, 0]).should.throwValue("all digits must satisfy 0 <= d < input base");
			});
			it("output base is one", {
				pending("Skipping");
				AllYourBase.rebase.bind(2, 1, [1, 0, 1, 0, 1, 0]).should.throwValue("output base must be >= 2");
			});
			it("output base is zero", {
				pending("Skipping");
				AllYourBase.rebase.bind(10, 0, [7]).should.throwValue("output base must be >= 2");
			});
			it("output base is negative", {
				pending("Skipping");
				AllYourBase.rebase.bind(2, -7, [1]).should.throwValue("output base must be >= 2");
			});
			it("both bases are negative", {
				pending("Skipping");
				AllYourBase.rebase.bind(-2, -7, [1]).should.throwValue("input base must be >= 2");
			});
		});
	}
}
