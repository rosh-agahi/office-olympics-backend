class Challenge < ApplicationRecord
  has_many :submissions
  validates :name, :description, :rules, presence: true 
end
