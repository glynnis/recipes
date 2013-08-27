class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :items, :through => :ingredients

  # for info on has_many through, see
  # http://stackoverflow.com/questions/4276023/add-quantity-to-a-recipe-habtm-ingredients-relation

  # t.string :name
  # t.string :yield
  # t.string :level
  # t.integer :prep_time
  # t.integer :cook_time
  # t.string :steps
  # t.string :source
end
