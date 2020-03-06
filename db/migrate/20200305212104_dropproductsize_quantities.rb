class DropproductsizeQuantities < ActiveRecord::Migration[5.2]
  def change
    drop_table :productsize_quantities
  end
end
