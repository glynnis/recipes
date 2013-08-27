class Recipe < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :yield
      t.string :level
      t.integer :prep_time
      t.integer :cook_time
      t.text :steps
      t.string :source

      t.timestamps
    end

    create_table :ingredients do |t|
      t.references :recipes
      t.references :items
      t.string :quantity
    end
  end
end
