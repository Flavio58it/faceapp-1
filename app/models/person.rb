class Person < ActiveRecord::Base

  attr_accessible :name, :public

  has_many :photos
end
