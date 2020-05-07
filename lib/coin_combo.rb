require('pry')
class Combo
  attr_accessor(:amount)
  attr_reader(:coin_array)

  def initialize(amount)
    @amount = amount
    @coin_array = [1]

  end

  def counter
    change = []
    remaining_amount = @amount
    coin_array.each do |coin|
      if ((remaining_amount/coin).to_int > 0)
        (remaining_amount/coin).to_int.times {change.push(coin)}
      end 
      # until (amount %= 25)
      #   amount = amount + 1
      #   change.push(amount)
      # end
    end
    change
  end
end