require "RomanNumber/version"
require "RomanNumber/numbers"

module RomanNumber

  class Converter

    def self.convert_roman(value)
      if value !~ /^[IVXLCDM]*$/
        raise ArgumentError, "'#{value}' is not a valid roman number.", caller
      end
      result = 0
      value.strip!
      NUMBERS.each do |key,x|
        roman_char = /^#{key}/
        while value.slice!(roman_char)
          result += x
        end
      end
      return result
    end

    def self.convert_int(value)
      if !value.is_a? Integer
        raise ArgumentError, "'#{value}' is not a valid integer value.", caller
      end
      result = ""
      NUMBERS.each do |key,x|
        if value >= x
          result += key*(value/x)
          value = value % x
        end
      end
      return result
    end

  end

end
