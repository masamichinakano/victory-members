class CreateDefences < ActiveRecord::Migration[6.0]
  def change
    create_table :defences do |t|
      t.integer :pitcher_fielder, null: false
      t.integer :catcher_fielder, null: false
      t.integer :first_fielder, null: false
      t.integer :second_fielder, null: false
      t.integer :third_fielder, null: false
      t.integer :short_fielder, null: false
      t.integer :left_fielder, null: false
      t.integer :center_fielder, null: false
      t.integer :right_fielder, null: false
      t.references :member, foreign_key: true
      t.timestamps
    end
  end
end
