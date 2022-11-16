class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie_id, :list_id, presence: true, uniqueness: { scope: [ :movie, :list ] }
  validates :comment, length: { minimum: 6 }
end
