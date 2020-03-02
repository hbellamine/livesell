class Addcolumnsession < ActiveRecord::Migration[5.2]
  def change

    add_column :sessions, :title, :string
  end
end
