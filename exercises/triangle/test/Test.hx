package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("equilateral triangle", {
			it("all sides are equal", {
				Triangle.equilateral([2, 2, 2]).should.be(true);
			});
			it("any side is unequal", {
				pending("Skipping");
				Triangle.equilateral([2, 3, 2]).should.be(false);
			});
			it("no sides are equal", {
				pending("Skipping");
				Triangle.equilateral([5, 4, 6]).should.be(false);
			});
			it("all zero sides is not a triangle", {
				pending("Skipping");
				Triangle.equilateral([0, 0, 0]).should.be(false);
			});
			it("sides may be floats", {
				pending("Skipping");
				Triangle.equilateral([0.5, 0.5, 0.5]).should.be(true);
			});
		});
		describe("isosceles triangle", {
			it("last two sides are equal", {
				Triangle.isosceles([3, 4, 4]).should.be(true);
			});
			it("first two sides are equal", {
				pending("Skipping");
				Triangle.isosceles([4, 4, 3]).should.be(true);
			});
			it("first and last sides are equal", {
				pending("Skipping");
				Triangle.isosceles([4, 3, 4]).should.be(true);
			});
			it("equilateral triangles are also isosceles", {
				pending("Skipping");
				Triangle.isosceles([4, 4, 4]).should.be(true);
			});
			it("no sides are equal", {
				pending("Skipping");
				Triangle.isosceles([2, 3, 4]).should.be(false);
			});
			it("first triangle inequality violation", {
				pending("Skipping");
				Triangle.isosceles([1, 1, 3]).should.be(false);
			});
			it("second triangle inequality violation", {
				pending("Skipping");
				Triangle.isosceles([1, 3, 1]).should.be(false);
			});
			it("third triangle inequality violation", {
				pending("Skipping");
				Triangle.isosceles([3, 1, 1]).should.be(false);
			});
			it("sides may be floats", {
				pending("Skipping");
				Triangle.isosceles([0.5, 0.4, 0.5]).should.be(true);
			});
		});
		describe("scalene triangle", {
			it("no sides are equal", {
				Triangle.scalene([5, 4, 6]).should.be(true);
			});
			it("all sides are equal", {
				pending("Skipping");
				Triangle.scalene([4, 4, 4]).should.be(false);
			});
			it("two sides are equal", {
				pending("Skipping");
				Triangle.scalene([4, 4, 3]).should.be(false);
			});
			it("may not violate triangle inequality", {
				pending("Skipping");
				Triangle.scalene([7, 3, 2]).should.be(false);
			});
			it("sides may be floats", {
				pending("Skipping");
				Triangle.scalene([0.5, 0.4, 0.6]).should.be(true);
			});
		});
	}
}
