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
    expect(combo.quarters_amount).to(eq(1))
  end
  it("will display inputted number in amount of dimes") do
    combo = Combo.new(20)
    expect(combo.dimes_amount).to(eq(2))
  end
  it("will display inputted number in amount of nickels") do
    combo = Combo.new(15)
    expect(combo.nickels_amount).to(eq(3))
  end
  it ("will display inputted number in amount of pennies") do 
    combo = Combo.new(8)
    expect(combo.pennies_amount).to(eq(8))
  end
  it("will display inputted number in amount of all coins") do
    combo = Combo.new(66)
    expect(combo.quarters_amount).to(eq(2))
    expect(combo.dimes_amount).to(eq(1))
    expect(combo.nickels_amount).to(eq(1))
    expect(combo.pennies_amount).to(eq(1))
  end
  it("will display inputted number in amount of all coins") do
    combo = Combo.new(138)
    expect(combo.quarters_amount).to(eq(5))
    expect(combo.dimes_amount).to(eq(1))
    expect(combo.pennies_amount).to(eq(3))
  end
end