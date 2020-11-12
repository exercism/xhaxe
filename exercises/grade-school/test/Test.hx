package;

using buddy.Should;

class Test extends buddy.SingleSuite {
    public function new() {
        describe("grade-school", {
            it("Adding a student adds them to the sorted roster", {
                var sut = new GradeSchool([
                    { name: "Aimee", grade: 2 }
                ]);
                var expected = ["Aimee"];
                sut.roster().should.containExactly(expected);
            });
            it("Adding more students adds them to the sorted roster", {
                pending("Skipping");
                var sut = new GradeSchool([
                    { name: "Blair", grade: 2 },
                    { name: "James", grade: 2 },
                    { name: "Paul",  grade: 2 }
                ]);
                var expected = ["Blair", "James", "Paul"];
                sut.roster().should.containExactly(expected);
            });
            it("Adding students to different grades adds them to the same sorted roster", {
                pending("Skipping");
                var sut = new GradeSchool([
                    { name: "Chelsea", grade: 3 },
                    { name: "Logan",   grade: 7 }
                ]);
                var expected = ["Chelsea", "Logan"];
                sut.roster().should.containExactly(expected);
            });
            it("Roster returns an empty list if there are no students enrolled", {
                pending("Skipping");
                new GradeSchool([]).roster().should.containExactly([]);
            });
            it("Student names with grades are displayed in the same sorted roster", {
                pending("Skipping");
                var sut = new GradeSchool([
                    { name: "Peter",   grade: 2 },
                    { name: "Anna",    grade: 1 },
                    { name: "Barb",    grade: 1 },
                    { name: "Zoe",     grade: 2 },
                    { name: "Alex",    grade: 2 },
                    { name: "Jim",     grade: 3 },
                    { name: "Charlie", grade: 1 }
                ]);
                var expected = ["Anna", "Barb", "Charlie", "Alex", "Peter", "Zoe", "Jim"];
                sut.roster().should.containExactly(expected);
            });
            it("Student names with grades are displayed in the same sorted roster", {
                pending("Skipping");
                var sut = new GradeSchool([
                    { name: "Franklin", grade: 5 },
                    { name: "Bradley",  grade: 5 },
                    { name: "Jeff",     grade: 1 }
                ]);
                var expected = ["Bradley", "Franklin"];
                sut.grade(5).should.containExactly(expected);
            });
        });
    }
}
