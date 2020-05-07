require('rspec')
require('pry')
require('coin_combo')

describe ('Combo') do
  it("the user enters an amount in cents") do
    combo = Combo.new(10)
    expect(combo.coin).to(eq(10))
  end  
end