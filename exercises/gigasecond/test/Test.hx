package;

using buddy.Should;

class Test extends buddy.SingleSuite {
    public function new() {
        describe("Add one gigasecond to the input.", {
            it("date only specification of time", {
                Gigasecond.add(Date.fromString("2011-04-25")).should().beOn(Date.fromString("2043-01-01 01:46:40"));
            });
            it("second test for date only specification of time", {
                pending("Skipping");
                Gigasecond.add(Date.fromString("1977-06-13")).should().beOn(Date.fromString("2009-02-19 01:46:40"));
            });
            it("third test for date only specification of time", {
                pending("Skipping");
                Gigasecond.add(Date.fromString("1979-07-19")).should().beOn(Date.fromString("2011-03-27 01:46:40"));
            });
            it("full time specified", {
                pending("Skipping");
                Gigasecond.add(Date.fromString("2015-01-24 22:00:00")).should().beOn(Date.fromString("2046-10-02 23:46:40"));
            });
            it("full time with day roll-over", {
                pending("Skipping");
                Gigasecond.add(Date.fromString("2015-01-24 23:59:59")).should().beOn(Date.fromString("2046-10-03 01:46:39"));
            });
        });
    }
}