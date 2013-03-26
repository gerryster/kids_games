require 'spec_helper'

describe Story do
  it "has many pages", :slow => true do
    story = Story.create!
    [1, 2].each do |page_number|
      page = Page.new(:body => "foo", :number => page_number)
      page.story = story
      page.save!
    end

    story.pages.count.should == 2
  end
end
