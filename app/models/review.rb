class Review < ApplicationRecord
  belongs_to :list
  validates :rating, numericality: {in: [0, 1, 2, 3, 4, 5]}
end
