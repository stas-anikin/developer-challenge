class Item < ApplicationRecord
  validates(:title,
            presence: true,
            uniqueness: true)
  validates(:price, presence: true, numericality: { greater_than: 0 })
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
  validates :description, presence: true
end
