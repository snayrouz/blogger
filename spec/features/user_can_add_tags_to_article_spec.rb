require "rails_helper"

RSpec.feature "User can add tags to articles", :type => :feature do
  scenario "User visits articles#new and can add tags" do

    visit "/articles/new"
    fill_in "Tag list", :with => "ruby, technology"
    fill_in "Title", :with => "Sample Article Title"
    fill_in "Body", :with => "This is the text for my article, woo hoo!"
    click_button "Create Article"

    expect(page).to have_content("Sample Article Title")
    expect(page).to have_content("This is the text for my article, woo hoo!")
    expect(page).to have_content("ruby")
    expect(page).to have_content("technology")
  end
end
