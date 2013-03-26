require 'spec_helper'

describe Page do
  it "belongs to a story", :slow => true do
    story = Story.create!
    page = Page.new(:body => "foo", :number => 1)
    page.story = story
    page.save!
    page.reload
    page.story.should == story
  end
end
