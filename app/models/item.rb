class Item < ApplicationRecord
  validates :item, {presence: true, length: {maximum: 18}, uniqueness: true} 
  validates :price, {presence: true, numericality: {greater_than_or_equal_to: 0}}
  validates :pergrams, {presence: true, numericality: {greater_than_or_equal_to: 0}}
end
