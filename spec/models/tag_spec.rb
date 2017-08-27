require 'rails_helper'

RSpec.describe Tag, type: :model do
  before(:each) do
    @article = Article.new(title: "Sample Article Title",
                        body: "This is the text for my article, woo hoo!")
    @article.tags.new(name: "ruby")
  end

  it "is valid with valid attributes" do

    expect(@article.tags.first).to be_valid
  end

  it "is not valid without a name" do
    @article.tags.first.name = nil
    
    expect(@article.tags.first).to_not be_valid
  end

end
