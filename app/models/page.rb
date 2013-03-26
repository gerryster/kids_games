class Page < ActiveRecord::Base
  belongs_to :story
  attr_accessible :body, :number
end
