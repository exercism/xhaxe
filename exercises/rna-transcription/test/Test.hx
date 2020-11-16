package;

using buddy.Should;

class Test extends buddy.SingleSuite {
    public function new() {
        describe("rna-transcription", {
            it("Empty RNA sequence", {
				Rna.toRna("").should.be("");
            });
            it("RNA complement of cytosine is guanine", {
				pending("Skipping");
				Rna.toRna("C").should.be("G");
            });
            it("RNA complement of thymine is adenine", {
				pending("Skipping");
				Rna.toRna("T").should.be("A");
            });
            it("RNA complement of adenine is uracil", {
				pending("Skipping");
				Rna.toRna("A").should.be("U");
            });
            it("RNA complement", {
				pending("Skipping");
				Rna.toRna("ACGTGGTCTTAA").should.be("UGCACCAGAAUU");
            });
        });
    }
}
