class CreateQuantities < ActiveRecord::Migration[5.2]
  def change
    create_table :quantities do |t|
      t.integer :qty

      t.timestamps
    end
  end
end
