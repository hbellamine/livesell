class Addreferencetoselection < ActiveRecord::Migration[5.2]
  def change
    add_reference :selections, :livecast, foreign_key: true
  end
end
