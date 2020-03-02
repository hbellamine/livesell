class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :date
      t.string :productscategory
      t.string :state
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
