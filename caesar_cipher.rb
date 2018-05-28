class CaesarCipher

  UPPERCASE_B = 64
  UPPERCASE_T = 91
  LOWERCASE_B = 96
  LOWERCASE_T = 123
  CHARACTERS_NUMBER = 26

  def initialize(text, shift = 13)
    @text = text
    @shift = shift
    @result = ""
  end

  def overload(ascii_code, from, to)
    if (ascii_code <= from)
      return ascii_code + CHARACTERS_NUMBER
    end
    if (ascii_code >= to)
      return ascii_code - CHARACTERS_NUMBER
    end
    ascii_code
  end

  def perform
    @text.each_byte do |ascii_code|
      if (ascii_code.between?(UPPERCASE_B, UPPERCASE_T))
        ascii_code = overload(ascii_code + @shift, UPPERCASE_B , UPPERCASE_T)
      end
      if (ascii_code.between?(LOWERCASE_B, LOWERCASE_T))
        ascii_code = overload(ascii_code + @shift, LOWERCASE_B, LOWERCASE_T)
      end
      @result += ascii_code.chr
    end
    @result
  end
end
