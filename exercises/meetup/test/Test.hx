package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Meetup", {
			it("monteenth of May 2013", {
				Meetup.meetup("teenth", 2013, 5, "Monday").should.be("2013-05-13");
			});
			it("monteenth of August 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 8, "Monday").should.be("2013-08-19");
			});
			it("monteenth of September 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 9, "Monday").should.be("2013-09-16");
			});
			it("tuesteenth of March 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 3, "Tuesday").should.be("2013-03-19");
			});
			it("tuesteenth of April 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 4, "Tuesday").should.be("2013-04-16");
			});
			it("tuesteenth of August 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 8, "Tuesday").should.be("2013-08-13");
			});
			it("wednesteenth of January 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 1, "Wednesday").should.be("2013-01-16");
			});
			it("wednesteenth of February 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 2, "Wednesday").should.be("2013-02-13");
			});
			it("wednesteenth of June 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 6, "Wednesday").should.be("2013-06-19");
			});
			it("thursteenth of May 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 5, "Thursday").should.be("2013-05-16");
			});
			it("thursteenth of June 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 6, "Thursday").should.be("2013-06-13");
			});
			it("thursteenth of September 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 9, "Thursday").should.be("2013-09-19");
			});
			it("friteenth of April 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 4, "Friday").should.be("2013-04-19");
			});
			it("friteenth of August 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 8, "Friday").should.be("2013-08-16");
			});
			it("friteenth of September 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 9, "Friday").should.be("2013-09-13");
			});
			it("saturteenth of February 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 2, "Saturday").should.be("2013-02-16");
			});
			it("saturteenth of April 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 4, "Saturday").should.be("2013-04-13");
			});
			it("saturteenth of October 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 10, "Saturday").should.be("2013-10-19");
			});
			it("sunteenth of May 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 5, "Sunday").should.be("2013-05-19");
			});
			it("sunteenth of June 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 6, "Sunday").should.be("2013-06-16");
			});
			it("sunteenth of October 2013", {
				pending("Skipping");
				Meetup.meetup("teenth", 2013, 10, "Sunday").should.be("2013-10-13");
			});
			it("first Monday of March 2013", {
				pending("Skipping");
				Meetup.meetup("first", 2013, 3, "Monday").should.be("2013-03-04");
			});
			it("first Monday of April 2013", {
				pending("Skipping");
				Meetup.meetup("first", 2013, 4, "Monday").should.be("2013-04-01");
			});
			it("first Tuesday of May 2013", {
				pending("Skipping");
				Meetup.meetup("first", 2013, 5, "Tuesday").should.be("2013-05-07");
			});
			it("first Tuesday of June 2013", {
				pending("Skipping");
				Meetup.meetup("first", 2013, 6, "Tuesday").should.be("2013-06-04");
			});
			it("first Wednesday of July 2013", {
				pending("Skipping");
				Meetup.meetup("first", 2013, 7, "Wednesday").should.be("2013-07-03");
			});
			it("first Wednesday of August 2013", {
				pending("Skipping");
				Meetup.meetup("first", 2013, 8, "Wednesday").should.be("2013-08-07");
			});
			it("first Thursday of September 2013", {
				pending("Skipping");
				Meetup.meetup("first", 2013, 9, "Thursday").should.be("2013-09-05");
			});
			it("first Thursday of October 2013", {
				pending("Skipping");
				Meetup.meetup("first", 2013, 10, "Thursday").should.be("2013-10-03");
			});
			it("first Friday of November 2013", {
				pending("Skipping");
				Meetup.meetup("first", 2013, 11, "Friday").should.be("2013-11-01");
			});
			it("first Friday of December 2013", {
				pending("Skipping");
				Meetup.meetup("first", 2013, 12, "Friday").should.be("2013-12-06");
			});
			it("first Saturday of January 2013", {
				pending("Skipping");
				Meetup.meetup("first", 2013, 1, "Saturday").should.be("2013-01-05");
			});
			it("first Saturday of February 2013", {
				pending("Skipping");
				Meetup.meetup("first", 2013, 2, "Saturday").should.be("2013-02-02");
			});
			it("first Sunday of March 2013", {
				pending("Skipping");
				Meetup.meetup("first", 2013, 3, "Sunday").should.be("2013-03-03");
			});
			it("first Sunday of April 2013", {
				pending("Skipping");
				Meetup.meetup("first", 2013, 4, "Sunday").should.be("2013-04-07");
			});
			it("second Monday of March 2013", {
				pending("Skipping");
				Meetup.meetup("second", 2013, 3, "Monday").should.be("2013-03-11");
			});
			it("second Monday of April 2013", {
				pending("Skipping");
				Meetup.meetup("second", 2013, 4, "Monday").should.be("2013-04-08");
			});
			it("second Tuesday of May 2013", {
				pending("Skipping");
				Meetup.meetup("second", 2013, 5, "Tuesday").should.be("2013-05-14");
			});
			it("second Tuesday of June 2013", {
				pending("Skipping");
				Meetup.meetup("second", 2013, 6, "Tuesday").should.be("2013-06-11");
			});
			it("second Wednesday of July 2013", {
				pending("Skipping");
				Meetup.meetup("second", 2013, 7, "Wednesday").should.be("2013-07-10");
			});
			it("second Wednesday of August 2013", {
				pending("Skipping");
				Meetup.meetup("second", 2013, 8, "Wednesday").should.be("2013-08-14");
			});
			it("second Thursday of September 2013", {
				pending("Skipping");
				Meetup.meetup("second", 2013, 9, "Thursday").should.be("2013-09-12");
			});
			it("second Thursday of October 2013", {
				pending("Skipping");
				Meetup.meetup("second", 2013, 10, "Thursday").should.be("2013-10-10");
			});
			it("second Friday of November 2013", {
				pending("Skipping");
				Meetup.meetup("second", 2013, 11, "Friday").should.be("2013-11-08");
			});
			it("second Friday of December 2013", {
				pending("Skipping");
				Meetup.meetup("second", 2013, 12, "Friday").should.be("2013-12-13");
			});
			it("second Saturday of January 2013", {
				pending("Skipping");
				Meetup.meetup("second", 2013, 1, "Saturday").should.be("2013-01-12");
			});
			it("second Saturday of February 2013", {
				pending("Skipping");
				Meetup.meetup("second", 2013, 2, "Saturday").should.be("2013-02-09");
			});
			it("second Sunday of March 2013", {
				pending("Skipping");
				Meetup.meetup("second", 2013, 3, "Sunday").should.be("2013-03-10");
			});
			it("second Sunday of April 2013", {
				pending("Skipping");
				Meetup.meetup("second", 2013, 4, "Sunday").should.be("2013-04-14");
			});
			it("third Monday of March 2013", {
				pending("Skipping");
				Meetup.meetup("third", 2013, 3, "Monday").should.be("2013-03-18");
			});
			it("third Monday of April 2013", {
				pending("Skipping");
				Meetup.meetup("third", 2013, 4, "Monday").should.be("2013-04-15");
			});
			it("third Tuesday of May 2013", {
				pending("Skipping");
				Meetup.meetup("third", 2013, 5, "Tuesday").should.be("2013-05-21");
			});
			it("third Tuesday of June 2013", {
				pending("Skipping");
				Meetup.meetup("third", 2013, 6, "Tuesday").should.be("2013-06-18");
			});
			it("third Wednesday of July 2013", {
				pending("Skipping");
				Meetup.meetup("third", 2013, 7, "Wednesday").should.be("2013-07-17");
			});
			it("third Wednesday of August 2013", {
				pending("Skipping");
				Meetup.meetup("third", 2013, 8, "Wednesday").should.be("2013-08-21");
			});
			it("third Thursday of September 2013", {
				pending("Skipping");
				Meetup.meetup("third", 2013, 9, "Thursday").should.be("2013-09-19");
			});
			it("third Thursday of October 2013", {
				pending("Skipping");
				Meetup.meetup("third", 2013, 10, "Thursday").should.be("2013-10-17");
			});
			it("third Friday of November 2013", {
				pending("Skipping");
				Meetup.meetup("third", 2013, 11, "Friday").should.be("2013-11-15");
			});
			it("third Friday of December 2013", {
				pending("Skipping");
				Meetup.meetup("third", 2013, 12, "Friday").should.be("2013-12-20");
			});
			it("third Saturday of January 2013", {
				pending("Skipping");
				Meetup.meetup("third", 2013, 1, "Saturday").should.be("2013-01-19");
			});
			it("third Saturday of February 2013", {
				pending("Skipping");
				Meetup.meetup("third", 2013, 2, "Saturday").should.be("2013-02-16");
			});
			it("third Sunday of March 2013", {
				pending("Skipping");
				Meetup.meetup("third", 2013, 3, "Sunday").should.be("2013-03-17");
			});
			it("third Sunday of April 2013", {
				pending("Skipping");
				Meetup.meetup("third", 2013, 4, "Sunday").should.be("2013-04-21");
			});
			it("fourth Monday of March 2013", {
				pending("Skipping");
				Meetup.meetup("fourth", 2013, 3, "Monday").should.be("2013-03-25");
			});
			it("fourth Monday of April 2013", {
				pending("Skipping");
				Meetup.meetup("fourth", 2013, 4, "Monday").should.be("2013-04-22");
			});
			it("fourth Tuesday of May 2013", {
				pending("Skipping");
				Meetup.meetup("fourth", 2013, 5, "Tuesday").should.be("2013-05-28");
			});
			it("fourth Tuesday of June 2013", {
				pending("Skipping");
				Meetup.meetup("fourth", 2013, 6, "Tuesday").should.be("2013-06-25");
			});
			it("fourth Wednesday of July 2013", {
				pending("Skipping");
				Meetup.meetup("fourth", 2013, 7, "Wednesday").should.be("2013-07-24");
			});
			it("fourth Wednesday of August 2013", {
				pending("Skipping");
				Meetup.meetup("fourth", 2013, 8, "Wednesday").should.be("2013-08-28");
			});
			it("fourth Thursday of September 2013", {
				pending("Skipping");
				Meetup.meetup("fourth", 2013, 9, "Thursday").should.be("2013-09-26");
			});
			it("fourth Thursday of October 2013", {
				pending("Skipping");
				Meetup.meetup("fourth", 2013, 10, "Thursday").should.be("2013-10-24");
			});
			it("fourth Friday of November 2013", {
				pending("Skipping");
				Meetup.meetup("fourth", 2013, 11, "Friday").should.be("2013-11-22");
			});
			it("fourth Friday of December 2013", {
				pending("Skipping");
				Meetup.meetup("fourth", 2013, 12, "Friday").should.be("2013-12-27");
			});
			it("fourth Saturday of January 2013", {
				pending("Skipping");
				Meetup.meetup("fourth", 2013, 1, "Saturday").should.be("2013-01-26");
			});
			it("fourth Saturday of February 2013", {
				pending("Skipping");
				Meetup.meetup("fourth", 2013, 2, "Saturday").should.be("2013-02-23");
			});
			it("fourth Sunday of March 2013", {
				pending("Skipping");
				Meetup.meetup("fourth", 2013, 3, "Sunday").should.be("2013-03-24");
			});
			it("fourth Sunday of April 2013", {
				pending("Skipping");
				Meetup.meetup("fourth", 2013, 4, "Sunday").should.be("2013-04-28");
			});
			it("last Monday of March 2013", {
				pending("Skipping");
				Meetup.meetup("last", 2013, 3, "Monday").should.be("2013-03-25");
			});
			it("last Monday of April 2013", {
				pending("Skipping");
				Meetup.meetup("last", 2013, 4, "Monday").should.be("2013-04-29");
			});
			it("last Tuesday of May 2013", {
				pending("Skipping");
				Meetup.meetup("last", 2013, 5, "Tuesday").should.be("2013-05-28");
			});
			it("last Tuesday of June 2013", {
				pending("Skipping");
				Meetup.meetup("last", 2013, 6, "Tuesday").should.be("2013-06-25");
			});
			it("last Wednesday of July 2013", {
				pending("Skipping");
				Meetup.meetup("last", 2013, 7, "Wednesday").should.be("2013-07-31");
			});
			it("last Wednesday of August 2013", {
				pending("Skipping");
				Meetup.meetup("last", 2013, 8, "Wednesday").should.be("2013-08-28");
			});
			it("last Thursday of September 2013", {
				pending("Skipping");
				Meetup.meetup("last", 2013, 9, "Thursday").should.be("2013-09-26");
			});
			it("last Thursday of October 2013", {
				pending("Skipping");
				Meetup.meetup("last", 2013, 10, "Thursday").should.be("2013-10-31");
			});
			it("last Friday of November 2013", {
				pending("Skipping");
				Meetup.meetup("last", 2013, 11, "Friday").should.be("2013-11-29");
			});
			it("last Friday of December 2013", {
				pending("Skipping");
				Meetup.meetup("last", 2013, 12, "Friday").should.be("2013-12-27");
			});
			it("last Saturday of January 2013", {
				pending("Skipping");
				Meetup.meetup("last", 2013, 1, "Saturday").should.be("2013-01-26");
			});
			it("last Saturday of February 2013", {
				pending("Skipping");
				Meetup.meetup("last", 2013, 2, "Saturday").should.be("2013-02-23");
			});
			it("last Sunday of March 2013", {
				pending("Skipping");
				Meetup.meetup("last", 2013, 3, "Sunday").should.be("2013-03-31");
			});
			it("last Sunday of April 2013", {
				pending("Skipping");
				Meetup.meetup("last", 2013, 4, "Sunday").should.be("2013-04-28");
			});
			it("last Wednesday of February 2012", {
				pending("Skipping");
				Meetup.meetup("last", 2012, 2, "Wednesday").should.be("2012-02-29");
			});
			it("last Wednesday of December 2014", {
				pending("Skipping");
				Meetup.meetup("last", 2014, 12, "Wednesday").should.be("2014-12-31");
			});
			it("last Sunday of February 2015", {
				pending("Skipping");
				Meetup.meetup("last", 2015, 2, "Sunday").should.be("2015-02-22");
			});
			it("first Friday of December 2012", {
				pending("Skipping");
				Meetup.meetup("first", 2012, 12, "Friday").should.be("2012-12-07");
			});
		});
	}
}
