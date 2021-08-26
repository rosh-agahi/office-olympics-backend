class SubmissionSerializer < ActiveModel::Serializer
  attributes :id, :name, :text, :videourl, :votes
end
