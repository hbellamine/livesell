class CreateLivecasts < ActiveRecord::Migration[5.2]
  def change
    create_table :livecasts do |t|
      t.string :category
      t.integer :state, default: 0
      t.references :user, foreign_key: true
      t.references :store, foreign_key: true
      t.string :url
      t.string :picture
      t.string :title
      t.date :date
      t.datetime :start_time

      t.timestamps
    end
  end
end
