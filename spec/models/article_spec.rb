require 'rails_helper'

RSpec.describe Article, type: :model do
  subject {
  described_class.new(title: "Sample Article Title",
                      body: "This is the text for my article, woo hoo!")
                      }
  it "is valid with valid attributes" do

    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = nil

    expect(subject).to_not be_valid
  end

  it "is not valid without a body" do
    subject.body = nil
    
    expect(subject).to_not be_valid
  end

end
