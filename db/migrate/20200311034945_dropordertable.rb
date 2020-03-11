class Dropordertable < ActiveRecord::Migration[5.2]
  def change
    drop_table :buyings
    drop_table :orders
  end
end
