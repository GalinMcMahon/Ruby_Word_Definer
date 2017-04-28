require "capybara/rspec"
require "./app"


Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the user enters a word") do
  it("receives the word and passes it to a list") do
    visit('/') # undefined method for visit - can't debug this all day
    fill_in("inputted_word", :with => "hello")
    click_button("That's my word!")
    expect(page).to have_content("hello")
  end
end
