package;

enum Planet {
	Earth;
	Mercury;
	Venus;
	Mars;
	Jupiter;
	Saturn;
	Uranus;
	Neptune;
}

class SpaceAge {
    private final seconds: Float;
    private static inline var earthOrbitInSeconds = 31557600;

    private final earthYearToPlanetPeriod = [
        Planet.Earth   => 1,
        Planet.Mercury => 0.2408467,
        Planet.Venus   => 0.61519726,
        Planet.Mars    => 1.8808158,
        Planet.Jupiter => 11.862615,
        Planet.Saturn  => 29.447498,
        Planet.Uranus  => 84.016846,
        Planet.Neptune => 164.79132
    ];

    public function new(seconds: Float) {
        this.seconds = seconds;        
    }

	private function calculateAge(periodInEarthYears: Float): Float {
        return round(seconds / (earthOrbitInSeconds * periodInEarthYears), 2);
    }
    
    public function onEarth(): Float {
        return calculateAge(earthYearToPlanetPeriod[Planet.Earth]);
    }

    public function onMercury(): Float {
        return calculateAge(earthYearToPlanetPeriod[Planet.Mercury]);
    }

    public function onVenus(): Float {
        return calculateAge(earthYearToPlanetPeriod[Planet.Venus]);
    }

    public function onMars(): Float {
        return calculateAge(earthYearToPlanetPeriod[Planet.Mars]);
    }

    public function onJupiter(): Float {
        return calculateAge(earthYearToPlanetPeriod[Planet.Jupiter]);
    }

    public function onSaturn(): Float {
        return calculateAge(earthYearToPlanetPeriod[Planet.Saturn]);
    }

    public function onUranus(): Float {
        return calculateAge(earthYearToPlanetPeriod[Planet.Uranus]);
    }

    public function onNeptune(): Float {
        return calculateAge(earthYearToPlanetPeriod[Planet.Neptune]);
    }

    /**
        Uses Math.round to fix a floating point number to a set precision.
        Taken from Franco Ponticelli's THX library: 
        https://github.com/fponticelli/thx/blob/master/src/Floats.hx#L206
    **/
    public static function round(number:Float, ?precision=2): Float
    {
        number *= Math.pow(10, precision);
        return Math.round(number) / Math.pow(10, precision);
    }
}
