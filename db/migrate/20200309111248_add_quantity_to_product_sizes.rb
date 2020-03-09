class AddQuantityToProductSizes < ActiveRecord::Migration[5.2]
  def change
    add_column :product_sizes, :quantity, :integer, default: 1
  end
end
