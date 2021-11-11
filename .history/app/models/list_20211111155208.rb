class List < ApplicationRecord
  has_many :movies through
  has_many :bookmarks, dependent: :destroy
  validates :name, uniqueness: true, presence: true
end
