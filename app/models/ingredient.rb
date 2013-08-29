class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :item
  validates :item_id, :recipe_id, :units, :quantity, presence: true

  # fields - recipe_id, item_id, quantity(string)
end
