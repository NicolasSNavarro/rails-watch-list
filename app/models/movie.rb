class Movie < ApplicationRecord
  has_many :bookmarks
  validates :bookmarks, absence: true
  validates :title, :overview, presence: true
  validates :title, uniqueness: true
end
