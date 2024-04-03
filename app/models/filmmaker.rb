class Filmmaker < ApplicationRecord
  belongs_to :genre
  has_many :films
end
