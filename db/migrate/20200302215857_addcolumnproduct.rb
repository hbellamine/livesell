class Addcolumnproduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :pictures, :string
  end
end
