class Addearninglivecast < ActiveRecord::Migration[5.2]
  def change
    add_column :livecasts, :earning, :integer, default: 0
  end
end
