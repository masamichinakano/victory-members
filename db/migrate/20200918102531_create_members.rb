class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name,   null: false
      t.integer :school_year
      t.string :age
      t.string :tall,   null: false
      t.string :weight, null: false
      t.integer :throwing, null: false
      t.integer :hitting, null: false
      t.integer :first_position, null:false
      t.integer :second_position
      t.integer :third_position
      t.string :number
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
