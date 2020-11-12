package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("testing isArmstrongNumber", {
			it("Zero is an Armstrong number", {
				ArmstrongNumbers.isArmstrongNumber(0).should().be(true);
			});
			it("Single digit numbers are Armstrong numbers", {
				pending("Skipping");
				ArmstrongNumbers.isArmstrongNumber(5).should().be(true);
			});
			it("There are no 2 digit Armstrong numbers", {
				pending("Skipping");
				ArmstrongNumbers.isArmstrongNumber(10).should().be(false);
			});
			it("Three digit number that is an Armstrong number", {
				pending("Skipping");
				ArmstrongNumbers.isArmstrongNumber(153).should().be(true);
			});
			it("Three digit number that is not an Armstrong number", {
				pending("Skipping");
				ArmstrongNumbers.isArmstrongNumber(100).should().be(false);
			});
			it("Four digit number that is an Armstrong number", {
				pending("Skipping");
				ArmstrongNumbers.isArmstrongNumber(9474).should().be(true);
			});
			it("Four digit number that is not an Armstrong number", {
				pending("Skipping");
				ArmstrongNumbers.isArmstrongNumber(9475).should().be(false);
			});
			it("Seven digit number that is an Armstrong number", {
				pending("Skipping");
				ArmstrongNumbers.isArmstrongNumber(9926315).should().be(true);
			});
			it("Seven digit number that is not an Armstrong number", {
				pending("Skipping");
				ArmstrongNumbers.isArmstrongNumber(9926314).should().be(false);
			});
		});
	}
}
