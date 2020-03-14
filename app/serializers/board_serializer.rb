class BoardSerializer < ActiveModel::Serializer
  attributes :id, :cocktail, :message
  has_one :user
end
