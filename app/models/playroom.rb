class Playroom < ApplicationRecord
  has_many :users
  has_one :draw
end
