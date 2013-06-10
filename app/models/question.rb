class Question < ActiveRecord::Base
  attr_accessible :text

  has_many :photos
  has_many :answers, :through => :photos

end
