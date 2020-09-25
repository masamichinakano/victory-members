class CreateDefences < ActiveRecord::Migration[6.0]
  def change
    create_table :defences do |t|
      t.integer :pitcher,   null: false
      t.integer :catcher,   null: false
      t.integer :first,   null: false
      t.integer :second,   null: false
      t.integer :third,   null: false
      t.integer :short,   null: false
      t.integer :left,   null: false
      t.integer :center,   null: false
      t.integer :right,   null: false
      t.references :user, null: false
      t.timestamps
    end
  end
end
