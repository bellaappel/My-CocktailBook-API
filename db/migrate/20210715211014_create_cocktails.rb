class CreateCocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.text :desc
      t.integer :liquor_id

      t.timestamps
    end
  end
end
