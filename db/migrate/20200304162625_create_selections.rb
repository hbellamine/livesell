class CreateSelections < ActiveRecord::Migration[5.2]
  def change
    create_table :selections do |t|
      t.references :product, foreign_key: true
      t.references :livecasts, foreign_key: true

      t.timestamps
    end
  end
end
