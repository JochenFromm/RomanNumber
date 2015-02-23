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
      test_combination(1,"I")
      test_combination(2,"II")
      test_combination(3,"III")
      test_combination(4,"IV")
      test_combination(5,"V")
      test_combination(6,"VI")
      test_combination(7,"VII")
      test_combination(8,"VIII")
      test_combination(9,"IX")
      test_combination(10,"X")
    end

    it "must convert values from 11 to 20" do
      test_combination(11,"XI")
      test_combination(12,"XII")
      test_combination(13,"XIII")
      test_combination(14,"XIV")
      test_combination(15,"XV")
      test_combination(16,"XVI")
      test_combination(17,"XVII")
      test_combination(18,"XVIII")
      test_combination(19,"XIX")
      test_combination(20,"XX")
    end

    it "must convert values from 21 to 30" do
      test_combination(21,"XXI")
      test_combination(22,"XXII")
      test_combination(23,"XXIII")
      test_combination(24,"XXIV")
      test_combination(25,"XXV")
      test_combination(26,"XXVI")
      test_combination(27,"XXVII")
      test_combination(28,"XXVIII")
      test_combination(29,"XXIX")
      test_combination(30,"XXX")
    end

    it "must convert values from 41 to 50" do
      test_combination(41,"XLI")
      test_combination(42,"XLII")
      test_combination(43,"XLIII")
      test_combination(44,"XLIV")
      test_combination(45,"XLV")
      test_combination(46,"XLVI")
      test_combination(47,"XLVII")
      test_combination(48,"XLVIII")
      test_combination(49,"XLIX")
      test_combination(50,"L")
    end

    it "must convert values from 50 to 60" do
      test_combination(51,"LI")
      test_combination(52,"LII")
      test_combination(53,"LIII")
      test_combination(54,"LIV")
      test_combination(55,"LV")
      test_combination(56,"LVI")
      test_combination(57,"LVII")
      test_combination(58,"LVIII")
      test_combination(59,"LIX")
      test_combination(60,"LX")
    end

    it "must convert values from 60 to 70" do
      test_combination(61,"LXI")
      test_combination(62,"LXII")
      test_combination(63,"LXIII")
      test_combination(64,"LXIV")
      test_combination(65,"LXV")
      test_combination(66,"LXVI")
      test_combination(67,"LXVII")
      test_combination(68,"LXVIII")
      test_combination(69,"LXIX")
      test_combination(70,"LXX")
    end

    it "must convert values from 70 to 80" do
      test_combination(71,"LXXI")
      test_combination(72,"LXXII")
      test_combination(73,"LXXIII")
      test_combination(74,"LXXIV")
      test_combination(75,"LXXV")
      test_combination(76,"LXXVI")
      test_combination(77,"LXXVII")
      test_combination(78,"LXXVIII")
      test_combination(79,"LXXIX")
      test_combination(80,"LXXX")
    end

    it "must convert values from 80 to 90" do
      test_combination(81,"LXXXI")
      test_combination(82,"LXXXII")
      test_combination(83,"LXXXIII")
      test_combination(84,"LXXXIV")
      test_combination(85,"LXXXV")
      test_combination(86,"LXXXVI")
      test_combination(87,"LXXXVII")
      test_combination(88,"LXXXVIII")
      test_combination(89,"LXXXIX")
      test_combination(90,"XC")
    end

    it "must convert values from 90 to 99" do
      test_combination(91,"XCI")
      test_combination(92,"XCII")
      test_combination(93,"XCIII")
      test_combination(94,"XCIV")
      test_combination(95,"XCV")
      test_combination(96,"XCVI")
      test_combination(97,"XCVII")
      test_combination(98,"XCVIII")
      test_combination(99,"XCIX")
      test_combination(100,"C")
    end

    it "must convert values for 400 and 900" do
      test_combination(100,"C")
      test_combination(200,"CC")
      test_combination(300,"CCC")
      test_combination(400,"CD")
      test_combination(500,"D")

      test_combination(501,"DI")
      test_combination(510,"DX")
      test_combination(520,"DXX")
      test_combination(550,"DL")

      test_combination(707,"DCCVII")
      test_combination(890,"DCCCXC")
      test_combination(900,"CM")
    end

    it "must convert big numbers" do
      test_combination(1000,"M")
      test_combination(1789,"MDCCLXXXIX")
      test_combination(1800,"MDCCC")
      test_combination(1900,"MCM")
      test_combination(1954,"MCMLIV")
      test_combination(1984,"MCMLXXXIV")
      test_combination(1990,"MCMXC")
      test_combination(1998,"MCMXCVIII")
      test_combination(1999,"MCMXCIX")
      test_combination(2000,"MM")
      test_combination(2013,"MMXIII")
      test_combination(2014,"MMXIV")
      test_combination(2015,"MMXV")
      test_combination(2499,"MMCDXCIX")
    end
  end

private

  def test_combination(value,result)
    RomanNumber::Converter.convert_int(value).must_equal result
    RomanNumber::Converter.convert_roman(result).must_equal value
  end

end

