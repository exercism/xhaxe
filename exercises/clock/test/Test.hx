package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Create a new clock with an initial time", {
			it("on the hour", {
				Clock.create(8, 0).should.be("08:00");
			});
			it("past the hour", {
				pending("Skipping");
				Clock.create(11, 9).should.be("11:09");
			});
			it("midnight is zero hours", {
				pending("Skipping");
				Clock.create(24, 0).should.be("00:00");
			});
			it("hour rolls over", {
				pending("Skipping");
				Clock.create(25, 0).should.be("01:00");
			});
			it("hour rolls over continuously", {
				pending("Skipping");
				Clock.create(100, 0).should.be("04:00");
			});
			it("sixty minutes is next hour", {
				pending("Skipping");
				Clock.create(1, 60).should.be("02:00");
			});
			it("minutes roll over", {
				pending("Skipping");
				Clock.create(0, 160).should.be("02:40");
			});
			it("minutes roll over continuously", {
				pending("Skipping");
				Clock.create(0, 1723).should.be("04:43");
			});
			it("hour and minutes roll over", {
				pending("Skipping");
				Clock.create(25, 160).should.be("03:40");
			});
			it("hour and minutes roll over continuously", {
				pending("Skipping");
				Clock.create(201, 3001).should.be("11:01");
			});
			it("hour and minutes roll over to exactly midnight", {
				pending("Skipping");
				Clock.create(72, 8640).should.be("00:00");
			});
			it("negative hour", {
				pending("Skipping");
				Clock.create(-1, 15).should.be("23:15");
			});
			it("negative hour rolls over", {
				pending("Skipping");
				Clock.create(-25, 0).should.be("23:00");
			});
			it("negative hour rolls over continuously", {
				pending("Skipping");
				Clock.create(-91, 0).should.be("05:00");
			});
			it("negative minutes", {
				pending("Skipping");
				Clock.create(1, -40).should.be("00:20");
			});
			it("negative minutes roll over", {
				pending("Skipping");
				Clock.create(1, -160).should.be("22:20");
			});
			it("negative minutes roll over continuously", {
				pending("Skipping");
				Clock.create(1, -4820).should.be("16:40");
			});
			it("negative sixty minutes is previous hour", {
				pending("Skipping");
				Clock.create(2, -60).should.be("01:00");
			});
			it("negative hour and minutes both roll over", {
				pending("Skipping");
				Clock.create(-25, -160).should.be("20:20");
			});
			it("negative hour and minutes both roll over continuously", {
				pending("Skipping");
				Clock.create(-121, -5810).should.be("22:10");
			});
		});
		describe("Add minutes", {
			it("add minutes", {
				Clock.add(10, 0, 3).should.be("10:03");
			});
			it("add no minutes", {
				pending("Skipping");
				Clock.add(6, 41, 0).should.be("06:41");
			});
			it("add to next hour", {
				pending("Skipping");
				Clock.add(0, 45, 40).should.be("01:25");
			});
			it("add more than one hour", {
				pending("Skipping");
				Clock.add(10, 0, 61).should.be("11:01");
			});
			it("add more than two hours with carry", {
				pending("Skipping");
				Clock.add(0, 45, 160).should.be("03:25");
			});
			it("add across midnight", {
				pending("Skipping");
				Clock.add(23, 59, 2).should.be("00:01");
			});
			it("add more than one day (1500 min = 25 hrs)", {
				pending("Skipping");
				Clock.add(5, 32, 1500).should.be("06:32");
			});
			it("add more than two days", {
				pending("Skipping");
				Clock.add(1, 1, 3500).should.be("11:21");
			});
		});
		describe("Subtract minutes", {
			it("subtract minutes", {
				Clock.subtract(10, 3, 3).should.be("10:00");
			});
			it("subtract to previous hour", {
				pending("Skipping");
				Clock.subtract(10, 3, 30).should.be("09:33");
			});
			it("subtract more than an hour", {
				pending("Skipping");
				Clock.subtract(10, 3, 70).should.be("08:53");
			});
			it("subtract across midnight", {
				pending("Skipping");
				Clock.subtract(0, 3, 4).should.be("23:59");
			});
			it("subtract more than two hours", {
				pending("Skipping");
				Clock.subtract(0, 0, 160).should.be("21:20");
			});
			it("subtract more than two hours with borrow", {
				pending("Skipping");
				Clock.subtract(6, 15, 160).should.be("03:35");
			});
			it("subtract more than one day (1500 min = 25 hrs)", {
				pending("Skipping");
				Clock.subtract(5, 32, 1500).should.be("04:32");
			});
			it("subtract more than two days", {
				pending("Skipping");
				Clock.subtract(2, 20, 3000).should.be("00:20");
			});
		});
		describe("Compare two clocks for equality", {
			it("clocks with same time", {
				Clock.equal({
					hour: 15,
					minute: 37
				}, {
					hour: 15,
					minute: 37
				}).should.be(true);
			});
			it("clocks a minute apart", {
				pending("Skipping");
				Clock.equal({
					hour: 15,
					minute: 36
				}, {
					hour: 15,
					minute: 37
				}).should.be(false);
			});
			it("clocks an hour apart", {
				pending("Skipping");
				Clock.equal({
					hour: 14,
					minute: 37
				}, {
					hour: 15,
					minute: 37
				}).should.be(false);
			});
			it("clocks with hour overflow", {
				pending("Skipping");
				Clock.equal({
					hour: 10,
					minute: 37
				}, {
					hour: 34,
					minute: 37
				}).should.be(true);
			});
			it("clocks with hour overflow by several days", {
				pending("Skipping");
				Clock.equal({
					hour: 3,
					minute: 11
				}, {
					hour: 99,
					minute: 11
				}).should.be(true);
			});
			it("clocks with negative hour", {
				pending("Skipping");
				Clock.equal({
					hour: 22,
					minute: 40
				}, {
					hour: -2,
					minute: 40
				}).should.be(true);
			});
			it("clocks with negative hour that wraps", {
				pending("Skipping");
				Clock.equal({
					hour: 17,
					minute: 3
				}, {
					hour: -31,
					minute: 3
				}).should.be(true);
			});
			it("clocks with negative hour that wraps multiple times", {
				pending("Skipping");
				Clock.equal({
					hour: 13,
					minute: 49
				}, {
					hour: -83,
					minute: 49
				}).should.be(true);
			});
			it("clocks with minute overflow", {
				pending("Skipping");
				Clock.equal({
					hour: 0,
					minute: 1
				}, {
					hour: 0,
					minute: 1441
				}).should.be(true);
			});
			it("clocks with minute overflow by several days", {
				pending("Skipping");
				Clock.equal({
					hour: 2,
					minute: 2
				}, {
					hour: 2,
					minute: 4322
				}).should.be(true);
			});
			it("clocks with negative minute", {
				pending("Skipping");
				Clock.equal({
					hour: 2,
					minute: 40
				}, {
					hour: 3,
					minute: -20
				}).should.be(true);
			});
			it("clocks with negative minute that wraps", {
				pending("Skipping");
				Clock.equal({
					hour: 4,
					minute: 10
				}, {
					hour: 5,
					minute: -1490
				}).should.be(true);
			});
			it("clocks with negative minute that wraps multiple times", {
				pending("Skipping");
				Clock.equal({
					hour: 6,
					minute: 15
				}, {
					hour: 6,
					minute: -4305
				}).should.be(true);
			});
			it("clocks with negative hours and minutes", {
				pending("Skipping");
				Clock.equal({
					hour: 7,
					minute: 32
				}, {
					hour: -12,
					minute: -268
				}).should.be(true);
			});
			it("clocks with negative hours and minutes that wrap", {
				pending("Skipping");
				Clock.equal({
					hour: 18,
					minute: 7
				}, {
					hour: -54,
					minute: -11513
				}).should.be(true);
			});
			it("full clock and zeroed clock", {
				pending("Skipping");
				Clock.equal({
					hour: 24,
					minute: 0
				}, {
					hour: 0,
					minute: 0
				}).should.be(true);
			});
		});
	}
}
