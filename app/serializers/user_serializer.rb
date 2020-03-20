class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :results, :boards
  has_many :results
  has_many :boards
end
