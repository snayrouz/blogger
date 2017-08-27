require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:each) do
  @article = Article.new(title: "Sample Article Title",
                      body: "This is the text for my article, woo hoo!")
  @article.comments.new(author_name: "Daffy Duck",
                      body: "I think this article is thhh-thhh-thupid!")
  end

  it "is valid with valid attributes" do

    expect(@article.comments.first).to be_valid
  end

  it "is not valid without an author name" do
    @article.comments.first.author_name = nil

    expect(@article.comments.first).to_not be_valid
  end

  it "is not valid without a body" do
    @article.comments.first.body = nil
    
    expect(@article.comments.first).to_not be_valid
  end

end
