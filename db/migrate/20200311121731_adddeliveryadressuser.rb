class Adddeliveryadressuser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :deliveryaddress, :string, default: "todef"
  end
end
