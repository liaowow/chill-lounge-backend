class ResultSerializer < ActiveModel::Serializer
  attributes :id, :eat, :sleep, :exercise, :mood, :created_at
  has_one :user
end
