package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Largest Series Product", {
			it("finds the largest product if span equals length", {
				LargestSeriesProduct.largestProduct(2, "29").should.be(18);
			});
			it("can find the largest product of 2 with numbers in order", {
				pending("Skipping");
				LargestSeriesProduct.largestProduct(2, "0123456789").should.be(72);
			});
			it("can find the largest product of 2", {
				pending("Skipping");
				LargestSeriesProduct.largestProduct(2, "576802143").should.be(48);
			});
			it("can find the largest product of 3 with numbers in order", {
				pending("Skipping");
				LargestSeriesProduct.largestProduct(3, "0123456789").should.be(504);
			});
			it("can find the largest product of 3", {
				pending("Skipping");
				LargestSeriesProduct.largestProduct(3, "1027839564").should.be(270);
			});
			it("can find the largest product of 5 with numbers in order", {
				pending("Skipping");
				LargestSeriesProduct.largestProduct(5, "0123456789").should.be(15120);
			});
			it("can get the largest product of a big number", {
				pending("Skipping");
				LargestSeriesProduct.largestProduct(6, "73167176531330624919225119674426574742355349194934").should.be(23520);
			});
			it("reports zero if the only digits are zero", {
				pending("Skipping");
				LargestSeriesProduct.largestProduct(2, "0000").should.be(0);
			});
			it("reports zero if all spans include zero", {
				pending("Skipping");
				LargestSeriesProduct.largestProduct(3, "99099").should.be(0);
			});
			it("rejects span longer than string length", {
				pending("Skipping");
				LargestSeriesProduct.largestProduct.bind(4, "123").should.throwValue("span must be smaller than string length");
			});
			it("reports 1 for empty string and empty product (0 span)", {
				pending("Skipping");
				LargestSeriesProduct.largestProduct(0, "").should.be(1);
			});
			it("reports 1 for nonempty string and empty product (0 span)", {
				pending("Skipping");
				LargestSeriesProduct.largestProduct(0, "123").should.be(1);
			});
			it("rejects empty string and nonzero span", {
				pending("Skipping");
				LargestSeriesProduct.largestProduct.bind(1, "").should.throwValue("span must be smaller than string length");
			});
			it("rejects invalid character in digits", {
				pending("Skipping");
				LargestSeriesProduct.largestProduct.bind(2, "1234a5").should.throwValue("digits input must only contain digits");
			});
			it("rejects negative span", {
				pending("Skipping");
				LargestSeriesProduct.largestProduct.bind(-1, "12345").should.throwValue("span must be greater than zero");
			});
		});
	}
}
