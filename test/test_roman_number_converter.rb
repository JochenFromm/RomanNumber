require 'minitest_helper'

describe RomanNumber::Converter do

  before do
    @converter = RomanNumber::Converter
  end

  describe "converter" do
    it "must have a version number" do
      refute_nil ::RomanNumber::VERSION
    end
  end

  describe "raises an exception" do
    it "if wrong number is passed" do
      assert_raises ArgumentError do
        @converter.convert_roman("QWERTZ")
      end
    end
  end

  describe "convert simple roman characters" do
    it "must convert I to 1" do
      @converter.convert_roman("I").must_equal 1
    end

    it "must convert V to 5" do
      @converter.convert_roman("V").must_equal 5
    end

    it "must convert X to 10" do
      @converter.convert_roman("X").must_equal 10
    end

    it "must convert L to 50" do
      @converter.convert_roman("L").must_equal 50
    end
  end

  describe "knwows simple characters" do
    it "must convert 1 to I" do
      @converter.convert_int(1).must_equal "I"
    end

    it "must convert 5 to V" do
      @converter.convert_int(5).must_equal "V"
    end

    it "must convert 10 to X" do
      @converter.convert_int(10).must_equal "X"
    end

    it "must convert 50 to L" do
      @converter.convert_int(50).must_equal "L"
    end
  end

  describe "knwows complex numbers" do

    it "must convert values from 1 to 10" do
      test_int_roman_combination(1,"I")
      test_int_roman_combination(2,"II")
      test_int_roman_combination(3,"III")
      test_int_roman_combination(4,"IV")
      test_int_roman_combination(5,"V")
      test_int_roman_combination(6,"VI")
      test_int_roman_combination(7,"VII")
      test_int_roman_combination(8,"VIII")
      test_int_roman_combination(9,"IX")
      test_int_roman_combination(10,"X")
    end

    it "must convert values from 11 to 20" do
      test_int_roman_combination(11,"XI")
      test_int_roman_combination(12,"XII")
      test_int_roman_combination(13,"XIII")
      test_int_roman_combination(14,"XIV")
      test_int_roman_combination(15,"XV")
      test_int_roman_combination(16,"XVI")
      test_int_roman_combination(17,"XVII")
      test_int_roman_combination(18,"XVIII")
      test_int_roman_combination(19,"XIX")
      test_int_roman_combination(20,"XX")
    end

    it "must convert values from 21 to 30" do
      test_int_roman_combination(21,"XXI")
      test_int_roman_combination(22,"XXII")
      test_int_roman_combination(23,"XXIII")
      test_int_roman_combination(24,"XXIV")
      test_int_roman_combination(25,"XXV")
      test_int_roman_combination(26,"XXVI")
      test_int_roman_combination(27,"XXVII")
      test_int_roman_combination(28,"XXVIII")
      test_int_roman_combination(29,"XXIX")
      test_int_roman_combination(30,"XXX")
    end

    it "must convert values from 41 to 50" do
      test_int_roman_combination(41,"XLI")
      test_int_roman_combination(42,"XLII")
      test_int_roman_combination(43,"XLIII")
      test_int_roman_combination(44,"XLIV")
      test_int_roman_combination(45,"XLV")
      test_int_roman_combination(46,"XLVI")
      test_int_roman_combination(47,"XLVII")
      test_int_roman_combination(48,"XLVIII")
      test_int_roman_combination(49,"XLIX")
      test_int_roman_combination(50,"L")
    end

    it "must convert values from 90 to 99" do
      test_int_roman_combination(91,"XCI")
      test_int_roman_combination(92,"XCII")
      test_int_roman_combination(93,"XCIII")
      test_int_roman_combination(94,"XCIV")
      test_int_roman_combination(95,"XCV")
      test_int_roman_combination(96,"XCVI")
      test_int_roman_combination(97,"XCVII")
      test_int_roman_combination(98,"XCVIII")
      test_int_roman_combination(99,"XCIX")
      test_int_roman_combination(100,"C")
    end

    it "must convert values for 400 and 500" do
      test_int_roman_combination(100,"C")
      test_int_roman_combination(200,"CC")
      test_int_roman_combination(300,"CCC")
      test_int_roman_combination(400,"CD")
      test_int_roman_combination(500,"D")
    end

    it "must convert big numbers" do
      test_int_roman_combination(1000,"M")
      test_int_roman_combination(1998,"MCMXCVIII")
      test_int_roman_combination(1999,"MCMXCIX")
      test_int_roman_combination(2000,"MM")
      test_int_roman_combination(2013,"MMXIII")
      test_int_roman_combination(2014,"MMXIV")
      test_int_roman_combination(2015,"MMXV")
      test_int_roman_combination(2499,"MMCDXCIX")
    end

    it "must convert big numbers" do
      test_roman_int_combination("M", 1000,)
      test_roman_int_combination("MCMXCVIII", 1998)
      test_roman_int_combination("MCMXCIX", 1999)
      test_roman_int_combination("MM", 2000,)
      test_roman_int_combination("MMXIII", 2013)
      test_roman_int_combination("MMXIV", 2014)
      test_roman_int_combination("MMXV", 2015)
      test_roman_int_combination("MMCDXCIX", 2499)
    end
  end


private

  def test_roman_int_combination(value,result)
    RomanNumber::Converter.convert_roman(value).must_equal result
  end

  def test_int_roman_combination(value,result)
    RomanNumber::Converter.convert_int(value).must_equal result
  end

end

