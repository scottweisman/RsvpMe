class RsvpSerializer < ActiveModel::Serializer
  attributes :id, :name, :attending, :number, :created_at
end
