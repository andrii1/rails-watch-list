class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  validates :title, uniqueness: true
end
