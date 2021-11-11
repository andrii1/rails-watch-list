class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :title, length: { is: 5 }
end
