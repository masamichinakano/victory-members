class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name,   null: false
      t.integer :school_year_id
      t.string :age
      t.string :tall,   null: false
      t.string :weight, null: false
      t.integer :throwing_id, null: false
      t.integer :hitting_id, null: false
      t.integer :first_position_id, null:false
      t.integer :second_position_id
      t.integer :third_position_id
      t.string :number
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
