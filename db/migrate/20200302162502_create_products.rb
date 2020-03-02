class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :color
      t.string :size
      t.integer :qty
      t.references :store, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
