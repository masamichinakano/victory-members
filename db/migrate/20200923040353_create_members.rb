class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name, null: false
      t.integer :school_year, null: false
      t.string :age, null: false
      t.string :tall, null: false
      t.string :weight, null: false
      t.integer :throwing_id, null: false
      t.integer :hitting_id, null: false
      t.string :number, null: false
      t.timestamps
    end
  end
end
