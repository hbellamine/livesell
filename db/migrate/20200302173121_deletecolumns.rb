class Deletecolumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :sessions, :date
    remove_column :sessions, :starttime

    add_column :sessions, :date, :date
    add_column :sessions, :starttime, :time
  end
end
