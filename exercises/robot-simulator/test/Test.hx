package;

using buddy.Should;
using RobotSimulator.RobotStateExt;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Create robot", {
			it("at origin facing north", {
				RobotSimulator.create({
					x: 0,
					y: 0
				}, "north").equals({
					position: {
						x: 0,
						y: 0
					},
					direction: "north"
				}).should.be(true);
			});
			it("at negative position facing south", {
				pending("Skipping");
				RobotSimulator.create({
					x: -1,
					y: -1
				}, "south").equals({
					position: {
						x: -1,
						y: -1
					},
					direction: "south"
				}).should.be(true);
			});
		});
		describe("Rotating clockwise", {
			it("changes north to east", {
				RobotSimulator.move({
					x: 0,
					y: 0
				}, "R", "north").equals({
					position: {
						x: 0,
						y: 0
					},
					direction: "east"
				}).should.be(true);
			});
			it("changes east to south", {
				pending("Skipping");
				RobotSimulator.move({
					x: 0,
					y: 0
				}, "R", "east").equals({
					position: {
						x: 0,
						y: 0
					},
					direction: "south"
				}).should.be(true);
			});
			it("changes south to west", {
				pending("Skipping");
				RobotSimulator.move({
					x: 0,
					y: 0
				}, "R", "south").equals({
					position: {
						x: 0,
						y: 0
					},
					direction: "west"
				}).should.be(true);
			});
			it("changes west to north", {
				pending("Skipping");
				RobotSimulator.move({
					x: 0,
					y: 0
				}, "R", "west").equals({
					position: {
						x: 0,
						y: 0
					},
					direction: "north"
				}).should.be(true);
			});
		});
		describe("Rotating counter-clockwise", {
			it("changes north to west", {
				RobotSimulator.move({
					x: 0,
					y: 0
				}, "L", "north").equals({
					position: {
						x: 0,
						y: 0
					},
					direction: "west"
				}).should.be(true);
			});
			it("changes west to south", {
				pending("Skipping");
				RobotSimulator.move({
					x: 0,
					y: 0
				}, "L", "west").equals({
					position: {
						x: 0,
						y: 0
					},
					direction: "south"
				}).should.be(true);
			});
			it("changes south to east", {
				pending("Skipping");
				RobotSimulator.move({
					x: 0,
					y: 0
				}, "L", "south").equals({
					position: {
						x: 0,
						y: 0
					},
					direction: "east"
				}).should.be(true);
			});
			it("changes east to north", {
				pending("Skipping");
				RobotSimulator.move({
					x: 0,
					y: 0
				}, "L", "east").equals({
					position: {
						x: 0,
						y: 0
					},
					direction: "north"
				}).should.be(true);
			});
		});
		describe("Moving forward one", {
			it("facing north increments Y", {
				RobotSimulator.move({
					x: 0,
					y: 0
				}, "A", "north").equals({
					position: {
						x: 0,
						y: 1
					},
					direction: "north"
				}).should.be(true);
			});
			it("facing south decrements Y", {
				pending("Skipping");
				RobotSimulator.move({
					x: 0,
					y: 0
				}, "A", "south").equals({
					position: {
						x: 0,
						y: -1
					},
					direction: "south"
				}).should.be(true);
			});
			it("facing east increments X", {
				pending("Skipping");
				RobotSimulator.move({
					x: 0,
					y: 0
				}, "A", "east").equals({
					position: {
						x: 1,
						y: 0
					},
					direction: "east"
				}).should.be(true);
			});
			it("facing west decrements X", {
				pending("Skipping");
				RobotSimulator.move({
					x: 0,
					y: 0
				}, "A", "west").equals({
					position: {
						x: -1,
						y: 0
					},
					direction: "west"
				}).should.be(true);
			});
		});
		describe("Follow series of instructions", {
			it("moving east and north from README", {
				RobotSimulator.move({
					x: 7,
					y: 3
				}, "RAALAL", "north").equals({
					position: {
						x: 9,
						y: 4
					},
					direction: "west"
				}).should.be(true);
			});
			it("moving west and north", {
				pending("Skipping");
				RobotSimulator.move({
					x: 0,
					y: 0
				}, "LAAARALA", "north").equals({
					position: {
						x: -4,
						y: 1
					},
					direction: "west"
				}).should.be(true);
			});
			it("moving west and south", {
				pending("Skipping");
				RobotSimulator.move({
					x: 2,
					y: -7
				}, "RRAAAAALA", "east").equals({
					position: {
						x: -3,
						y: -8
					},
					direction: "south"
				}).should.be(true);
			});
			it("moving east and north", {
				pending("Skipping");
				RobotSimulator.move({
					x: 8,
					y: 4
				}, "LAAARRRALLLL", "south").equals({
					position: {
						x: 11,
						y: 5
					},
					direction: "north"
				}).should.be(true);
			});
		});
	}
}
