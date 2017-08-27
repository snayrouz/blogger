require "rails_helper"

RSpec.feature "User can create a new comment" do
  before(:each) do
    @article = Article.new(title: "Sample Article Title",
                        body: "This is the text for my article, woo hoo!")
    @article.comments.create(author_name: "Daffy Duck",
                              body: "I think this article is thhh-thhh-thupid!")
  end

  scenario "User visits article#show and can comment on that article" do
    visit "/articles/1"

    expect(current_path).to eq(article_path(@article))

    expect(page).to have_text("Post a Comment")

    fill_in 'Your Name', with: 'Chewbacca'
    fill_in 'Your Comment', with: 'Rawr!'
    click_button 'Submit Comment'

    expect(page).to have_content('Chewbacca')
    expect(page).to have_content('Rawr!')
  end
end
