class Item < ApplicationRecord
  validates :item, {presence: true, length:{maximum: 18}} 
end
