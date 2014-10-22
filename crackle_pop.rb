class CracklePopper

  def self.go(range)
    range.each do |num|
      puts "#{self.crackle_or_pop(num)}"
    end
  end

  def self.crackle_or_pop(num)
    if div_by_3?(num) && div_by_5?(num)
      "CracklePop"
    elsif div_by_3?(num)
      "Crackle"
    elsif div_by_5?(num)
      "Pop"
    else
      num.to_s
    end
  end 

  private

  def self.div_by_3?(num)
    num % 3 == 0
  end

  def self.div_by_5?(num)
    num % 5 == 0
  end

end

if $0 == __FILE__
  require 'minitest/autorun'

  class CracklePopTest < MiniTest::Test
    require 'pry'
    
    describe CracklePopper do

      it "returns CracklePop when divisible by 3 and 5" do
        assert_equal "CracklePop", CracklePopper.crackle_or_pop(15) 
      end

      it "returns Crackle when divisible by 3" do
        assert_equal "Crackle", CracklePopper.crackle_or_pop(9) 
      end

      it "returns Pop when divisible by 5" do
        assert_equal "Pop", CracklePopper.crackle_or_pop(10) 
      end

      it "returns the number when not divisible by 3 or 5" do
        assert_equal "38", CracklePopper.crackle_or_pop(38) 
      end

    end
  end

end


