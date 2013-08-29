class FixPluralization < ActiveRecord::Migration
  def change
    rename_table(:item, :items)
    rename_column(:ingredients, :recipes_id, :recipe_id)
    rename_column(:ingredients, :items_id, :item_id)
  end
end
