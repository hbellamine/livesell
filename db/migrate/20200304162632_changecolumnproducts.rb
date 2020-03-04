class Changecolumnproducts < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :pictures, :photos
  end
end
