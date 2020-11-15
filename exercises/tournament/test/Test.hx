package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Tournament", {
			it("just the header if no input", {
				Tournament.tally([]).should.containExactly(["Team                           | MP |  W |  D |  L |  P"]);

			});
			it("a win is three points, a loss is zero points", {
				pending("Skipping");
				Tournament.tally(["Allegoric Alaskans;Blithering Badgers;win"]).should.containExactly([
					"Team                           | MP |  W |  D |  L |  P",
					"Allegoric Alaskans             |  1 |  1 |  0 |  0 |  3",
					"Blithering Badgers             |  1 |  0 |  0 |  1 |  0"
				]);
			});
			it("a win can also be expressed as a loss", {
				pending("Skipping");
				Tournament.tally(["Blithering Badgers;Allegoric Alaskans;loss"]).should.containExactly([
					"Team                           | MP |  W |  D |  L |  P",
					"Allegoric Alaskans             |  1 |  1 |  0 |  0 |  3",
					"Blithering Badgers             |  1 |  0 |  0 |  1 |  0"
				]);
			});
			it("a different team can win", {
				pending("Skipping");
				Tournament.tally(["Blithering Badgers;Allegoric Alaskans;win"]).should.containExactly([
					"Team                           | MP |  W |  D |  L |  P",
					"Blithering Badgers             |  1 |  1 |  0 |  0 |  3",
					"Allegoric Alaskans             |  1 |  0 |  0 |  1 |  0"
				]);
			});
			it("a draw is one point each", {
				pending("Skipping");
				Tournament.tally(["Allegoric Alaskans;Blithering Badgers;draw"]).should.containExactly([
					"Team                           | MP |  W |  D |  L |  P",
					"Allegoric Alaskans             |  1 |  0 |  1 |  0 |  1",
					"Blithering Badgers             |  1 |  0 |  1 |  0 |  1"
				]);
			});
			it("There can be more than one match", {
				pending("Skipping");
				Tournament.tally([
					"Allegoric Alaskans;Blithering Badgers;win",
					"Allegoric Alaskans;Blithering Badgers;win"
				]).should.containExactly([
					"Team                           | MP |  W |  D |  L |  P",
					"Allegoric Alaskans             |  2 |  2 |  0 |  0 |  6",
					"Blithering Badgers             |  2 |  0 |  0 |  2 |  0"
				]);
			});
			it("There can be more than one winner", {
				pending("Skipping");
				Tournament.tally([
					"Allegoric Alaskans;Blithering Badgers;loss",
					"Allegoric Alaskans;Blithering Badgers;win"
				]).should.containExactly([
					"Team                           | MP |  W |  D |  L |  P",
					"Allegoric Alaskans             |  2 |  1 |  0 |  1 |  3",
					"Blithering Badgers             |  2 |  1 |  0 |  1 |  3"
				]);
			});
			it("There can be more than two teams", {
				pending("Skipping");
				Tournament.tally([
					"Allegoric Alaskans;Blithering Badgers;win",
					"Blithering Badgers;Courageous Californians;win",
					"Courageous Californians;Allegoric Alaskans;loss"
				]).should.containExactly([
					"Team                           | MP |  W |  D |  L |  P",
					"Allegoric Alaskans             |  2 |  2 |  0 |  0 |  6",
					"Blithering Badgers             |  2 |  1 |  0 |  1 |  3",
					"Courageous Californians        |  2 |  0 |  0 |  2 |  0"
				]);
			});
			it("typical input", {
				pending("Skipping");
				Tournament.tally([
					"Allegoric Alaskans;Blithering Badgers;win",
					"Devastating Donkeys;Courageous Californians;draw",
					"Devastating Donkeys;Allegoric Alaskans;win",
					"Courageous Californians;Blithering Badgers;loss",
					"Blithering Badgers;Devastating Donkeys;loss",
					"Allegoric Alaskans;Courageous Californians;win"
				]).should.containExactly([
					"Team                           | MP |  W |  D |  L |  P",
					"Devastating Donkeys            |  3 |  2 |  1 |  0 |  7",
					"Allegoric Alaskans             |  3 |  2 |  0 |  1 |  6",
					"Blithering Badgers             |  3 |  1 |  0 |  2 |  3",
					"Courageous Californians        |  3 |  0 |  1 |  2 |  1"
				]);
			});
			it("incomplete competition (not all pairs have played)", {
				pending("Skipping");
				Tournament.tally([
					"Allegoric Alaskans;Blithering Badgers;loss",
					"Devastating Donkeys;Allegoric Alaskans;loss",
					"Courageous Californians;Blithering Badgers;draw",
					"Allegoric Alaskans;Courageous Californians;win"
				]).should.containExactly([
					"Team                           | MP |  W |  D |  L |  P",
					"Allegoric Alaskans             |  3 |  2 |  0 |  1 |  6",
					"Blithering Badgers             |  2 |  1 |  1 |  0 |  4",
					"Courageous Californians        |  2 |  0 |  1 |  1 |  1",
					"Devastating Donkeys            |  1 |  0 |  0 |  1 |  0"
				]);
			});
			it("ties broken alphabetically", {
				pending("Skipping");
				Tournament.tally([
					"Courageous Californians;Devastating Donkeys;win",
					"Allegoric Alaskans;Blithering Badgers;win",
					"Devastating Donkeys;Allegoric Alaskans;loss",
					"Courageous Californians;Blithering Badgers;win",
					"Blithering Badgers;Devastating Donkeys;draw",
					"Allegoric Alaskans;Courageous Californians;draw"
				]).should.containExactly([
					"Team                           | MP |  W |  D |  L |  P",
					"Allegoric Alaskans             |  3 |  2 |  1 |  0 |  7",
					"Courageous Californians        |  3 |  2 |  1 |  0 |  7",
					"Blithering Badgers             |  3 |  0 |  1 |  2 |  1",
					"Devastating Donkeys            |  3 |  0 |  1 |  2 |  1"
				]);
			});
		});
	}
}
