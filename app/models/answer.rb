class Answer < ActiveRecord::Base
  attr_accessible :photo_id, :question_id, :rating

  belongs_to :question
  belongs_to :photo
  
end
