package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("Accumulate", {
			it("empty accumulation produces empty accumulation", {
				pending("Skipping");
				[0].accumulate(x -> x).should.containExactly([0]);
			});
			it("accumulate squares", {
				pending("Skipping");
				[1, 2, 3].accumulate(x -> x * x).should.containExactly([1, 4, 9]);
			});
			it("accumulate upcases", {
				pending("Skipping");
				["hello", "world"].accumulate(x -> x.toUpperCase()).should.containExactly(["HELLO", "WORLD"]);
			});
			it("accumulate reversed strings", {
				pending("Skipping");
				function reverseString(str: String)
					return [
						for (i in 0...str.length+1)
							str.charAt(str.length - i)
					].join("");

				"the quick brown fox etc".split(" ").accumulate(reverseString).should.containExactly(
				"eht kciuq nworb xof cte".split(" ")
				);
			});
			it("accumulate within accumulate", {
				pending("Skipping");
				["a", "b", "c"].accumulate(x -> 
				["1", "2", "3"].accumulate(y -> x + y).join(" "))
					.should.containExactly(["a1 a2 a3", "b1 b2 b3", "c1 c2 c3"]);
			});
			// haxe evaluation is not lazy
			/*
			it("accumulate is lazy", {
				var counter = 0;
				var accumulation = [1, 2, 3].accumulate(x -> x * counter++);

				counter.should.be(0);
				accumulation.accumulate(x -> x);
				counter.should.be(3);
			});
			*/
			it("accumulate allows different return types", {
				pending("Skipping");
				[1, 2, 3].accumulate(Std.string).should.containExactly(["1", "2", "3"]);
			});
		});
	}
}
