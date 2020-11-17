package;

enum FailReason {
    TooFewDigits;
    TooManyDigits;
    FirstOf11Not1;
    ContainsLetters;
    ContainsPunctuation;
    AreaCodeStartsWith0;
    AreaCodeStartsWith1;
    ExchangeCodeStartsWith0;
    ExchangeCodeStartsWith1;
}

enum CleanResult {
    Success(result: String);
    Fail(reason: FailReason);
}

class PhoneNumber {
    public static function clean(phrase: String): String {
        return switch (tryClean(phrase)) {
            case Fail(TooFewDigits):            throw "incorrect number of digits";
            case Fail(TooManyDigits):           throw "more than 11 digits";
            case Fail(FirstOf11Not1):           throw "11 digits must start with 1";
            case Fail(ContainsLetters):         throw "letters not permitted";
            case Fail(ContainsPunctuation):     throw "punctuations not permitted";
            case Fail(AreaCodeStartsWith0):     throw "area code cannot start with zero";
            case Fail(AreaCodeStartsWith1):     throw "area code cannot start with one";
            case Fail(ExchangeCodeStartsWith0): throw "exchange code cannot start with zero";
            case Fail(ExchangeCodeStartsWith1): throw "exchange code cannot start with one";
            case Success(result):               result;
        }
    } 
    
    private static function tryClean(phrase: String): CleanResult {
        // strip permitted non-digit characters
        var digits = ~/[-+.\(\)\s]/g.replace(phrase, "");

        // strip country code if valid
        if (digits.length == 11) {
            if (digits.charAt(0) != "1")
                return Fail(FirstOf11Not1);
            digits = digits.substr(1);
        }
        
        return switch (digits) {
            case d if (~/[a-z]/i.match(d)): Fail(ContainsLetters);
            case d if (~/[@!]/.match(d)):   Fail(ContainsPunctuation);
            case d if (d.length < 10):      Fail(TooFewDigits);
            case d if (d.length > 11):      Fail(TooManyDigits);
            case d if (~/^0/.match(d)):     Fail(AreaCodeStartsWith0);
            case d if (~/^1/.match(d)):     Fail(AreaCodeStartsWith1);
            case d if (~/^...0/.match(d)):  Fail(ExchangeCodeStartsWith0);
            case d if (~/^...1/.match(d)):  Fail(ExchangeCodeStartsWith1);
            default:                        Success(digits);
        };
    } 
}
