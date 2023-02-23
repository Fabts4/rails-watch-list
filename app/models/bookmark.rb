class Bookmark < ApplicationRecord
  belongs_to :list, dependent: :destroy
  belongs_to :movie

  validates :comment, presence: true, length: { minimum: 6 }
  validates :list, uniqueness: { scope: :movie }
end
