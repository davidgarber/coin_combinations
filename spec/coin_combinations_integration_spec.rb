require('capybara/rspec')
require('./app')
require('pry')
Capybara.app = Sinatra::Application

describe('coin_combination path', {:type => :feature}) do
  it('Takes an input and returns change in coins') do
    visit('/')
    fill_in('coins', :with => 99)
    click_button('Send')
    expect(page).to have_content("You have 3 quarters, 2 dimes, 0 nickels, and 4 pennies")
  end
end
