class Addskutoproducts < ActiveRecord::Migration[5.2]
  def change
    add_column :product_shoesizes, :sku, :string, default: "def"
    add_column :product_sizes, :sku, :string, default: "def"
    add_column :product_colors, :sku, :string, default: "def"

  end
end
