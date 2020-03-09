class CreateShoesizes < ActiveRecord::Migration[5.2]
  def change
    create_table :shoesizes do |t|
      t.string :name

      t.timestamps
    end
  end
end
