class Changetypetime < ActiveRecord::Migration[5.2]
  def change

    change_column :livecasts, :start_time, :time
  end
end
