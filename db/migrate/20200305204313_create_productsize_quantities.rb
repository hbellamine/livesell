class CreateProductsizeQuantities < ActiveRecord::Migration[5.2]
  def change
    create_table :productsize_quantities do |t|
      t.references :product_size, foreign_key: true
      t.references :quantity, foreign_key: true

      t.timestamps
    end
  end
end
