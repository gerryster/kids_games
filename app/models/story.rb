class Story < ActiveRecord::Base
  has_many :pages

  attr_accessible :title
end
