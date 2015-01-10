class Rsvp < ActiveRecord::Base
  validates :name, presence: true

  scope :attending, -> { where(attending: true) }

  def first_name
    self.name.split[0]
  end

end
