class Fixnum
  
  NUMBERS_IN_WORDS = {
    1  => "one",
    2  => "two",
    3  => "three",
    4  => "four",
    5  => "five",
    6  => "six",
    7  => "seven",
    8  => "eight",
    9  => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety"
  }

  def in_words
    if self < 20
      NUMBERS_IN_WORDS[self]
    elsif self.multiple_of?(10) && self < 100
      NUMBERS_IN_WORDS[self]
    elsif self < 100
      remainder = self % 10
      tens_digit = self - remainder
      
      tens_digit.in_words + " " + ones_digit.in_words
    elsif self.multiple_of?(100) && self < 1000
      hundreds_digit = self / 100

      hundreds_digit.in_words + " hundred"
    elsif self < 1000
      remainder = self % 100
      hundreds = self - remainder

      hundreds.in_words + " and " + remainder.in_words
    elsif self.multiple_of?(1000) && self < 1000000
      thousands = self / 1000

      thousands.in_words + " thousand"
    elsif self < 1000000
      remainder = self % 1000
      thousands = self - remainder

      thousands.in_words + " " + remainder.in_words
    elsif self == 1000000
      "one million"
    end
  end

  def multiple_of?(x)
    self % x == 0
  end

end
