require "rails_helper"

RSpec.feature "User can delete an article", :type => :feature do
  scenario "User visits articles#show and can click link to delete that article" do

    Article.create(title: "Sample Article Title",
                  body: "This is the text for my article, woo hoo!")

    visit "/articles/1"

    click_link 'delete'

    expect(current_path).to eq(articles_path)
  end
end
