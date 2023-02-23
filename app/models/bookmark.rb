class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list, dependent: :destroy
  validates :movie_id, uniqueness: { scope: :list_id }
  validates :comment, length: { minimum: 6 }
end
