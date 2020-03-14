class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :mod, :results, :boards
  has_many :results
  has_many :boards
end
