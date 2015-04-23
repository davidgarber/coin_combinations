require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combination') do
  it("Input is 25 and returns 1 quarter") do
    expect(25.coin_combination()).to(eq("You have 1 quarters, 0 dimes, 0 nickels, and 0 pennies"))
  end


  it("Input is 10 and returns 1 dime") do
    expect(10.coin_combination()).to(eq("You have 0 quarters, 1 dimes, 0 nickels, and 0 pennies"))
  end

  it("Input is 5 and returns 1 nickel") do
    expect(5.coin_combination()).to(eq("You have 0 quarters, 0 dimes, 1 nickels, and 0 pennies"))
  end


  it("Input is 1 and returns 1 penny") do
    expect(1.coin_combination()).to(eq("You have 0 quarters, 0 dimes, 0 nickels, and 1 pennies"))
  end

it("Input is 6 and returns 1 nickel and 1 penny") do
  expect(6.coin_combination()).to(eq("You have 0 quarters, 0 dimes, 1 nickels, and 1 pennies"))
  end
end
