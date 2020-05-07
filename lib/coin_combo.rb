require('pry')
class Combo
  attr_accessor(:amount, :quarters, :dimes , :nickels , :pennies)
  attr_reader(:coin_array)

  def initialize(amount)
    @amount = amount
    @quarters = 0
    @dimes = 0
    @nickels = 0
    @pennies = 0
  end

  def quarters_amount
    until (@amount < 25) do
      @quarters += 1
      @amount -= 25
    end
    @quarters
  end

  def dimes_amount
    until (@amount < 10) do
      @dimes += 1
      @amount -= 10
    end
    @dimes
  end

  def nickels_amount
    until (@amount < 5) do
      @nickels += 1
      @amount -= 5
    end
    @nickels
  end

  def pennies_amount
    @amount
  end

  def coin_counter
    self.quarters_amount
    self.dimes_amount
    self.nickels_amount
    self.pennies_amount
  end
end