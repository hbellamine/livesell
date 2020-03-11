class Addlivecasttoorders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :livecast, foreign_key: true
  end
end
