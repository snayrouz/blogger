require "rails_helper"

RSpec.feature "Tags", :type => :feature do
  describe "User can visit tags#index and" do
    it "view all tags" do
      Article.create(title: "Sample Article Title",
                     body: "This is the text for my article, woo hoo!",
                     tag_list: "ruby")
      Article.create(title: "Moose",
                     body: "Moose either sleeps all day long or he plays then sleeps then plays and sleeps. What a life.",
                     tag_list: "dog")
      visit '/tags'

      expect(page).to have_link("ruby")
      expect(page).to have_link("dog")
    end
  end
end
