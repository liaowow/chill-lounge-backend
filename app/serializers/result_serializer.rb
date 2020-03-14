class ResultSerializer < ActiveModel::Serializer
  attributes :id, :eat, :sleep, :exercise, :mood
  has_one :user
end
