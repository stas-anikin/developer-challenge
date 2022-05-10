class Item < ApplicationRecord
  # basic validations to ensure that the title, description, price, and quantity are present and price and quantity are not negative
  validates(:title,
            presence: true,
            uniqueness: true)
  validates(:price, presence: true, numericality: { greater_than: 0 })
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
  validates :description, presence: true
end
