class CreateLiquors < ActiveRecord::Migration[6.0]
  def change
    create_table :liquors do |t|
      t.string :name
      t.string :brand
      t.decimal :proof

      t.timestamps
    end
  end
end
