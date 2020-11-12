package;

import NucleotideCount.Nucleotide;

using buddy.Should;
using haxe.Exception;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("count all nucleotides in a strand", {
			it("empty strand", {
				var expected = [Nucleotide.A => 0, Nucleotide.C => 0, Nucleotide.G => 0, Nucleotide.T => 0,];
				NucleotideCount.nucleotideCounts("").should.containExactly(expected);
			});
			it("can count one nucleotide in single-character input", {
				pending("Skipping");
				var expected = [Nucleotide.A => 0, Nucleotide.C => 0, Nucleotide.G => 1, Nucleotide.T => 0,];
				NucleotideCount.nucleotideCounts("G").should.containExactly(expected);
			});
			it("strand with repeated nucleotide", {
				pending("Skipping");
				var expected = [Nucleotide.A => 0, Nucleotide.C => 0, Nucleotide.G => 7, Nucleotide.T => 0,];
				NucleotideCount.nucleotideCounts("GGGGGGG").should.containExactly(expected);
			});
			it("strand with multiple nucleotides", {
				pending("Skipping");
				var expected = [Nucleotide.A => 20, Nucleotide.C => 12, Nucleotide.G => 17, Nucleotide.T => 21,];
				NucleotideCount.nucleotideCounts("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC").should.containExactly(expected);
			});
			it("strand with invalid nucleotides", {
				pending("Skipping");
				NucleotideCount.nucleotideCounts.bind("AGXXACT").should.throwType(Exception);
			});
		});
	}
}
