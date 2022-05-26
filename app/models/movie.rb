class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  validates :title, :overview, presence: true
  validates :title, uniqueness: true
end
