class AddItemName < ActiveRecord::Migration
  def change
    create_table :item do |t|
      t.string :name
    end
  end
end
