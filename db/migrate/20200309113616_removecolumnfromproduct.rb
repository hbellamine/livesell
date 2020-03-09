class Removecolumnfromproduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :size
    remove_column :products, :color
    remove_column :products, :qty
  end
end
