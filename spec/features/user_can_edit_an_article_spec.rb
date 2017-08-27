RSpec.feature "Articles", :type => :feature do
  scenario "User visits articles#show and can click edit link" do

    article = Article.create(title: "Sample Article Title",
              body: "This is the text for my article, woo hoo!")

    visit '/articles/1'

    click_link 'edit'

    expect(current_path).to eq(edit_article_path(article))

    fill_in 'Title', :with => "Anything"
    fill_in 'Body', :with => "Some more of anything"

    click_button 'Update Article'

    expect(page).to have_content("Anything")
    expect(page).to have_content("Some more of anything")
  end
end
