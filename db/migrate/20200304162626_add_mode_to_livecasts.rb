class AddModeToLivecasts < ActiveRecord::Migration[5.2]
  def change
    add_column :livecasts, :mode, :integer, default: 0
  end
end
