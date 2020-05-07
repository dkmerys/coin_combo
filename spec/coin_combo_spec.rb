require('rspec')
require('pry')
require('coin_combo')

describe ('Combo') do
  it("the user enters an amount in cents") do
    combo = Combo.new(10)
    expect(combo.amount).to(eq(10))
  end
  it("will display inputted number in amount of quarters that will fit into it") do
    combo = Combo.new(26)
    expect(combo.quarters).to(eq(1))
  end
  # it("will display inputted number in amount of nickels") do
  #   combo = Combo.new(15)
  #   expect(combo.counter).to(eq([5, 5, 5]))
  # end
  # it("will display inputted number in amount of nickels AND pennies") do
  #   combo = Combo.new(6)
  #   expect(combo.counter).to(eq([5, 1]))
  # end
end