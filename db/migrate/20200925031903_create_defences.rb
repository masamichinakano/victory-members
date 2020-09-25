class CreateDefences < ActiveRecord::Migration[6.0]
  def change
    create_table :defences do |t|
      t.integer :pitcher_id,   null: false
      t.integer :catcher_id,   null: false
      t.integer :first_id,   null: false
      t.integer :second_id,   null: false
      t.integer :third_id,   null: false
      t.integer :short_id,   null: false
      t.integer :left_id,   null: false
      t.integer :center_id,   null: false
      t.integer :right_id,   null: false
      t.references :user, null: false
      t.timestamps
    end
  end
end
