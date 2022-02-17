class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }
end

# class List < ApplicationRecord
#   has_many :bookmarks, dependent: :destroy
#   has_many :movies, through: :bookmarks
#   validates :name, uniqueness: true, presence: true
# end
