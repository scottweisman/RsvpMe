class Rsvp < ActiveRecord::Base
  validates :name, presence: true

  def first_name
    self.name.split[0]
  end

end
