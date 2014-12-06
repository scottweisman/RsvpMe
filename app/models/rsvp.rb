class Rsvp < ActiveRecord::Base
  validates :name, :attending, :number, :presence => true
end
