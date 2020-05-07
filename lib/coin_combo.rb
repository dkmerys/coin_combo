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
    @change = 0
  end

  def quarters
    until (@amount < 25) do
      @quarters += 1
      @amount -= 25
    end
    @quarters
  end

end












  # def counter
  #   change = []
  #   coin_array.each do |coin|
  #     if ((@amount/coin).to_int > 0)
  #       (@amount/coin).to_int.times {change.push(coin)}
  #       #  remaining_amount = @amount - coin.inject(:+)