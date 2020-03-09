class Addcolumntoproductshoesizeandcolors < ActiveRecord::Migration[5.2]
  def change
    add_column :product_shoesizes, :quantity, :integer, default: 1
    add_column :product_colors, :quantity, :integer, default: 1
  end
end
