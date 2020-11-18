package;

typedef LegacyData = Map<String, Array<String>>;
typedef NewData    = Map<String, Int>;

class ETL {
	public static function transform(input: LegacyData): NewData {
		return [
			for (k => v in input)
				for (i in v)
					i.toLowerCase() => Std.parseInt(k)
		];
	}
}
