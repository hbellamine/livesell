class Adduserreferencesonselections < ActiveRecord::Migration[5.2]
  def change
    add_reference :selections, :user, index: true
    add_foreign_key :selections, :users
  end
end
