package;

using Lambda;

class Sieve {
    public static function primes(limit: Int): Array<Int> {
        // init candidates
        var candidates = new List<Int>();
        for (i in 2...limit + 1)
            candidates.add(i);

        // iteratively add prime while removing all its multiples
        var primes = [];
        for (n in candidates) {
            primes.push(n);
            var rm = 1;
            while (++rm * n <= limit)
                candidates.remove(n * rm);
        }
        
        return primes;
    } 
}
