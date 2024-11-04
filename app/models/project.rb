class Project < ApplicationRecord
  has_one_attached :thumbnail
  validates :name, presence: true
  validates :description, presence: true
end
