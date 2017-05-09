class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.integer :board_id
      t.integer :position_order

      t.timestamps

    end
  end
end
