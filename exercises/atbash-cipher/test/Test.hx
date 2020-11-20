package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("encode", {
			it("encode yes", {
				AtbashCipher.encode("yes").should.be("bvh");
			});
			it("encode no", {
				pending("Skipping");
				AtbashCipher.encode("no").should.be("ml");
			});
			it("encode OMG", {
				pending("Skipping");
				AtbashCipher.encode("OMG").should.be("lnt");
			});
			it("encode spaces", {
				pending("Skipping");
				AtbashCipher.encode("O M G").should.be("lnt");
			});
			it("encode mindblowingly", {
				pending("Skipping");
				AtbashCipher.encode("mindblowingly").should.be("nrmwy oldrm tob");
			});
			it("encode numbers", {
				pending("Skipping");
				AtbashCipher.encode("Testing,1 2 3, testing.").should.be("gvhgr mt123 gvhgr mt");
			});
			it("encode deep thought", {
				pending("Skipping");
				AtbashCipher.encode("Truth is fiction.").should.be("gifgs rhurx grlm");
			});
			it("encode all the letters", {
				pending("Skipping");
				AtbashCipher.encode("The quick brown fox jumps over the lazy dog.").should.be("gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt");
			});
		});
		describe("decode", {
			it("decode exercism", {
				AtbashCipher.decode("vcvix rhn").should.be("exercism");
			});
			it("decode a sentence", {
				pending("Skipping");
				AtbashCipher.decode("zmlyh gzxov rhlug vmzhg vkkrm thglm v").should.be("anobstacleisoftenasteppingstone");
			});
			it("decode numbers", {
				pending("Skipping");
				AtbashCipher.decode("gvhgr mt123 gvhgr mt").should.be("testing123testing");
			});
			it("decode all the letters", {
				pending("Skipping");
				AtbashCipher.decode("gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt").should.be("thequickbrownfoxjumpsoverthelazydog");
			});
			it("decode with too many spaces", {
				pending("Skipping");
				AtbashCipher.decode("vc vix    r hn").should.be("exercism");
			});
			it("decode with no spaces", {
				pending("Skipping");
				AtbashCipher.decode("zmlyhgzxovrhlugvmzhgvkkrmthglmv").should.be("anobstacleisoftenasteppingstone");
			});
		});
	}
}
