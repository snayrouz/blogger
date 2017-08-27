require "rails_helper"

RSpec.feature "Articles", :type => :feature do
  scenario "User visits articles#index and can see all articles" do

    Article.create(title: "Sample Article Title",
                body: "This is the text for my article, woo hoo!")

    visit "/articles"

    expect(page).to have_text("Sample Article Title")
  end
end
