class Gif < ApplicationRecord
  include Shrine::Attachment(:image)

  # relations
  belongs_to :user

  # validations
  validates_presence_of :image
  
  acts_as_taggable
end
