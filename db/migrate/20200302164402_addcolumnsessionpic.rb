class Addcolumnsessionpic < ActiveRecord::Migration[5.2]
  def change
    add_column :sessions, :photo, :string
  end
end
