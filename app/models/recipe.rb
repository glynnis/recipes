class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :items, :through => :ingredients
  #validates :items, presence: true
  validates :name, :prep_time, :cook_time, :steps, presence: true

  # for info on has_many through, see
  # http://stackoverflow.com/questions/4276023/add-quantity-to-a-recipe-habtm-ingredients-relation

  # t.string :name - req
  # t.string :yield - not required
  # t.string :level - not required
  # t.integer :prep_time - req
  # t.integer :cook_time - req
  # t.string :steps - req
  # t.string :source - not required
end
