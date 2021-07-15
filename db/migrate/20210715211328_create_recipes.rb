class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.integer :cocktail_id
      t.text :instructions
      t.string :creator

      t.timestamps
    end
  end
end
