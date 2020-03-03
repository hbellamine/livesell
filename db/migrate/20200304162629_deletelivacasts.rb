class Deletelivacasts < ActiveRecord::Migration[5.2]
  def change
    remove_column :selections, :livecasts_id
  end
end
