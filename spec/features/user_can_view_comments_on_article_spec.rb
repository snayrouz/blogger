require "rails_helper"

RSpec.describe "User can view comments on an article", :type => :feature do
  before(:each) do
    @article = Article.new(title: "Sample Article Title",
                        body: "This is the text for my article, woo hoo!")
    @article.comments.create(author_name: "Daffy Duck",
                              body: "I think this article is thhh-thhh-thupid!")
  end
  scenario "User visits articles#show and can view comments for that article" do
    visit "articles/1"

    expect(current_path).to eq(article_path(@article))
    expect(page).to have_text(@article.title)
    expect(page).to have_text(@article.body)
    expect(page).to have_text(@article.comments.first.author_name)
    expect(page).to have_text(@article.comments.first.body)
  end

end
