package;

class PrimeFactors {
    public static function factors(value: Float): Array<Float> {
        var _factors = [];
        var divisor = 2.;

        while (value != 1) {
            if ((value / divisor) % 1 == 0) {
                value /= divisor;
                _factors.push(divisor);
            } 
            else
                divisor++;
        }

        return _factors;
    } 
}
