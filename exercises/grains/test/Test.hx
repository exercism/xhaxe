package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("returns the number of grains on the square", {
			it("grains on square 1", {
				Grains.square(1).should.be(1);
			});
			it("grains on square 2", {
				pending("Skipping");
				Grains.square(2).should.be(2);
			});
			it("grains on square 3", {
				pending("Skipping");
				Grains.square(3).should.be(4);
			});
			it("grains on square 4", {
				pending("Skipping");
				Grains.square(4).should.be(8);
			});
			it("grains on square 16", {
				pending("Skipping");
				Grains.square(16).should.be(32768);
			});
			it("grains on square 32", {
				pending("Skipping");
				Grains.square(32).should.be(2147483648);
			});
			it("grains on square 64", {
				pending("Skipping");
				Grains.square(64).should.be(9223372036854775808);
			});
			it("square 0 raises an exception", {
				pending("Skipping");
				Grains.square.bind(0).should.throwType(haxe.Exception);
			});
			it("negative square raises an exception", {
				pending("Skipping");
				Grains.square.bind(-1).should.throwType(haxe.Exception);
			});
			it("square greater than 64 raises an exception", {
				pending("Skipping");
				Grains.square.bind(65).should.throwType(haxe.Exception);
			});
		});
		describe("Total", {
			it("returns the total number of grains on the board", {
				Grains.total().should.be(18446744073709551615);
			});
		});
	}
}
