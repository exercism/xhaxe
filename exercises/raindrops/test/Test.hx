package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Raindrops", {
			it("the sound for 1 is 1", {
				Raindrops.convert(1).should.be("1");
			});
			it("the sound for 3 is Pling", {
				pending("Skipping");
				Raindrops.convert(3).should.be("Pling");
			});
			it("the sound for 5 is Plang", {
				pending("Skipping");
				Raindrops.convert(5).should.be("Plang");
			});
			it("the sound for 7 is Plong", {
				pending("Skipping");
				Raindrops.convert(7).should.be("Plong");
			});
			it("the sound for 6 is Pling as it has a factor 3", {
				pending("Skipping");
				Raindrops.convert(6).should.be("Pling");
			});
			it("2 to the power 3 does not make a raindrop sound as 3 is the exponent not the base", {
				pending("Skipping");
				Raindrops.convert(8).should.be("8");
			});
			it("the sound for 9 is Pling as it has a factor 3", {
				pending("Skipping");
				Raindrops.convert(9).should.be("Pling");
			});
			it("the sound for 10 is Plang as it has a factor 5", {
				pending("Skipping");
				Raindrops.convert(10).should.be("Plang");
			});
			it("the sound for 14 is Plong as it has a factor of 7", {
				pending("Skipping");
				Raindrops.convert(14).should.be("Plong");
			});
			it("the sound for 15 is PlingPlang as it has factors 3 and 5", {
				pending("Skipping");
				Raindrops.convert(15).should.be("PlingPlang");
			});
			it("the sound for 21 is PlingPlong as it has factors 3 and 7", {
				pending("Skipping");
				Raindrops.convert(21).should.be("PlingPlong");
			});
			it("the sound for 25 is Plang as it has a factor 5", {
				pending("Skipping");
				Raindrops.convert(25).should.be("Plang");
			});
			it("the sound for 27 is Pling as it has a factor 3", {
				pending("Skipping");
				Raindrops.convert(27).should.be("Pling");
			});
			it("the sound for 35 is PlangPlong as it has factors 5 and 7", {
				pending("Skipping");
				Raindrops.convert(35).should.be("PlangPlong");
			});
			it("the sound for 49 is Plong as it has a factor 7", {
				pending("Skipping");
				Raindrops.convert(49).should.be("Plong");
			});
			it("the sound for 52 is 52", {
				pending("Skipping");
				Raindrops.convert(52).should.be("52");
			});
			it("the sound for 105 is PlingPlangPlong as it has factors 3, 5 and 7", {
				pending("Skipping");
				Raindrops.convert(105).should.be("PlingPlangPlong");
			});
			it("the sound for 3125 is Plang as it has a factor 5", {
				pending("Skipping");
				Raindrops.convert(3125).should.be("Plang");
			});
		});
	}
}
