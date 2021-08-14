class ChallengeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :rules
  has_many :submissions
end
