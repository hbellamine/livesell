class Addcolumntolivecast < ActiveRecord::Migration[5.2]
  def change
    add_column :livecasts, :confirmed, :boolean, default: false
  end
end
