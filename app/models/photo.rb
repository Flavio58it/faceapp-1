class Photo < ActiveRecord::Base

  scope :p, -> person_id {where(:person_id=>person_id)}

  mount_uploader :avatar, AvatarUploader

  attr_accessible :person_id, :photo, :avatar

  belongs_to :person


end
