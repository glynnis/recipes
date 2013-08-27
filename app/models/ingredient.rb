class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :item

  # fields - recipe_id, item_id, quantity(string)
end
