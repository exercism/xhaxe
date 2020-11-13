package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("robot-name", {
			var robot = new Robot();

			it("robot has a name", {
				robot.name.should.match(~/^[A-Z]{2}\d{3}$/);
			});
			it("name is the same each time", {
				robot.name.should.be(robot.name);
			});
			it("different robots have different names", {
				var robot2 = new Robot();
				robot2.name.should.not.be(robot.name);
			});
			it("can reset robot name", {
				var originalName = robot.name;
				robot.reset();
				robot.name.should.not.be(originalName);
			});
			it("after reset the name is valid", {
				robot.reset();
				robot.name.should.match(~/^[A-Z]{2}\d{3}$/);
			});
			it("robot names are unique", {
				var names = new Map<String, Bool>();
				for (i in 0...10000) {
					var robot = new Robot();
					names.exists(robot.name).should.be(false);
					robot.name.should.match(~/^[A-Z]{2}\d{3}$/);
					names[robot.name] = true;
				}
			});
		});
	}
}
