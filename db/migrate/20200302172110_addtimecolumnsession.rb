class Addtimecolumnsession < ActiveRecord::Migration[5.2]
  def change
     add_column :sessions, :starttime, :string
  end
end
