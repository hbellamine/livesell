class Addcolumnurl < ActiveRecord::Migration[5.2]
  def change

    add_column :sessions, :url, :string
  end
end
