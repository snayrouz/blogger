require "rails_helper"

RSpec.feature "Articles", :type => :feature do
  scenario "User visits articles#show and can see one article" do

    Article.create(title: "Sample Article Title",
                body: "This is the text for my article, woo hoo!")

    visit "/articles/1"

    expect(page).to have_text("Sample Article Title")
    expect(page).to have_text("This is the text for my article, woo hoo!")
  end
end
