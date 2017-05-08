require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the user enters a word", {:type => :feature}) do
  it("receives the word and passes it to a list") do
    visit('/')
    click_link("Add a new word")
    fill_in('inputted_word', :with => 'hello')
    click_button("That's my word!")
    expect(page).to have_content("hello")
  end
end

describe("the user enters a definition", {:type => :feature}) do
  it("receives the definition and passes it to a list") do
    visit('/')
    click_link("See word list")
    click_link("hello")
    click_link("Add a definition")
    fill_in('inputted_definition', :with => 'hi')
    click_button("That's what it means!")
    expect(page).to have_content("hello")
    click_link("hello")
    expect(page).to have_content("hi")
  end
end

describe("the user finds a word / definition combo", {:type => :feature}) do
  it("returns the definition for a defined word") do
    visit('/')
    click_link("See word list")
    click_link("hello")
    expect(page).to have_content("hi")
  end
end
