class Film < ApplicationRecord
  belongs_to :filmmaker
  belongs_to :genre
  enum release_status: { not_released: 0, released: 2 }
  enum post_status: { draft: 0, published: 2 }
end
