require('pry')
class Combo
  attr_accessor(:amount, :change, :quarters, :dime , :nickels , :pennies)
  attr_reader(:coin_array)

  def initialize(amount)
    @amount = amount
    @quarters = 0
    @dimes = 0
    @nickels = 0
    @pennies = 0
  end

  def quarters
    until (@amount < 25) do
      @quarters += 1
      @amount -= 25
    end
    @quarters
  end

  def dimes
    until (@amount < 10) do
      @dimes += 1
      @amount -= 10
    end
    @dimes
  end

  def nickels
    until (@amount < 5) do
      @nickels += 1
      @amount -= 5
    end
    @nickels
  end

  def pennies
    @amount
  end

  def coin_counter
    self.quarters
    self.dimes
    self.nickles
    self.pennies
  end

end