class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name, null: false
      t.integer :school_year_id, null: false
      t.string :age, null: false
      t.string :tall, null: false
      t.string :weight, null: false
      t.integer :throwing_id, null: false
      t.integer :hitting_id, null: false
      t.string :number, null: false
      t.boolean :pitcher_position, default: false, null: false
      t.boolean :catcher_position, default: false, null: false
      t.boolean :first_position, default: false, null: false
      t.boolean :second_position, default: false, null: false
      t.boolean :third_position, default: false, null: false
      t.boolean :short_position, default: false, null: false
      t.boolean :outside_position, default: false, null: false
      t.references :user, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
