import haxe.Json;
import sys.io.File;

using StringTools;
using Lambda;

typedef MdLink = {
	description:String,
	url:String
}

/**
 * Concept-related helpers
 */
class ConceptTools {
	public static function main() {
		var args = Sys.args();

		var inFlag = args.indexOf("-in");
		var inPath = args[inFlag + 1];
		var outFlag = args.indexOf("-out");
		var outPath = args[outFlag + 1];
		var cmdFlag = args.indexOf("-cmd");
		var cmd = args[cmdFlag + 1];

		switch (cmd.toLowerCase()) {
			case "synclinks":
				syncLinks(inPath);
		}
	}

	/**
	 * Extracts links from about.md/introduction.md and syncs to links.json
	 * Supports normal and reference-style links
	 * @param mdFolder
	 */
	static function syncLinks(mdFolder:String) {
		var about = File.getContent('$mdFolder/about.md');
		var intro = File.getContent('$mdFolder/introduction.md');
		var aboutLinks = extractLinks(about);
		var introLinks = extractLinks(intro);
		var links = aboutLinks.concat(introLinks);

		var uniqLinks = []; // deduplicate
		for (x in links)
			if (uniqLinks.find(y -> equals(x, y)) == null)
				uniqLinks.push(x);

		var outFile = '$mdFolder/links.json';
		var spacing = "  ";
		File.saveContent(outFile, Json.stringify(uniqLinks, spacing));
	}

	/**
	 * Extracts links from passed in markdown string
	 * @param md
	 */
	static function extractLinks(md:String):Array<MdLink> {
		var links = [];
		function extract(reg:EReg)
			while (reg.match(md)) {
				var desc = reg.matched(1);
				desc = titleCase(desc.replace("-", " "));

				var url = reg.matched(2);
				links.push({description: desc, url: url});
				md = reg.matchedRight();
			}
		// normal link
		var reg1 = ~/\[(.+?)\]\((.+?)\)/gm;
		extract(reg1);
		// reference-style link
		var reg2 = ~/^\[(.+?)\]:\s+(http.+?)$/gm;
		extract(reg2);

		return links;
	}

	static function titleCase(str:String):String {
		function capitalize(s:String)
			return s.charAt(0).toUpperCase() + s.substr(1);

		return str.split(" ").map(capitalize).join(" ");
	}

	static function equals(a:MdLink, b:MdLink):Bool {
		return a.description == b.description && a.url == b.url;
	}
}
