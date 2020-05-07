require('rspec')
require('pry')
require('coin_combo')

describe ('Combo') do
  it("the user enters an amount in cents") do
    combo = Combo.new(10)
    expect(combo.amount).to(eq(10))
  end
  it("will divide inputted number by 1 to show amount in pennies") do
    combo = Combo.new(4)
    expect(combo.counter).to(eq([1, 1, 1, 1]))
  end
end