class CreateDefences < ActiveRecord::Migration[6.0]
  def change
    create_table :defences do |t|
      t.string :pitcher_fielder, null: false
      t.string :catcher_fielder, null: false
      t.string :first_fielder, null: false
      t.string :second_fielder, null: false
      t.string :third_fielder, null: false
      t.string :short_fielder, null: false
      t.string :left_fielder, null: false
      t.string :center_fielder, null: false
      t.string :right_fielder, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
