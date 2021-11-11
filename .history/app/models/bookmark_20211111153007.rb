class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :email, uniqueness: true
end
