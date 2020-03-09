class CreateProductShoesizes < ActiveRecord::Migration[5.2]
  def change
    create_table :product_shoesizes do |t|
      t.references :product, foreign_key: true
      t.references :shoesize, foreign_key: true

      t.timestamps
    end
  end
end
