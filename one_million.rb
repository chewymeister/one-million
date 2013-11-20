class Fixnum

  def in_words
    numbers_in_words =  {
      1       => "one",
      2       => "two",
      3       => "three",
      4       => "four",
      5       => "five",
      6       => "six",
      7       => "seven",
      8       => "eight",
      9       => "nine",
      10      => "ten",
      11      => "eleven",
      12      => "twelve",
      13      => "thirteen",
      14      => "fourteen",
      15      => "fifteen",
      16      => "sixteen",
      17      => "seventeen",
      18      => "eighteen",
      19      => "nineteen",
      20      => "twenty",
      30      => "thirty",
      40      => "forty",
      50      => "fifty",
      60      => "sixty",
      70      => "seventy",
      80      => "eighty",
      90      => "ninety"
    }
    if self > 0 && self < 20
      return numbers_in_words[self]
    elsif self.multiple_of?(10) && self < 100
      return numbers_in_words[self]
    end
  end

  def multiple_of?(x)
    self % x == 0
  end

end
