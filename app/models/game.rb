class Game < ApplicationRecord
  validates :price, presence: true
end
