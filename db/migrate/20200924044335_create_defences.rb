class CreateDefences < ActiveRecord::Migration[6.0]
  def change
    create_table :defences do |t|
      t.string :match,         null:false
      t.references :pitcher,   null:false, foreign_key: true
      t.references :catcher,   null:false, foreign_key: true
      t.references :first,     null:false, foreign_key: true
      t.references :second,    null:false, foreign_key: true
      t.references :third,     null:false, foreign_key: true
      t.references :short,     null:false, foreign_key: true
      t.references :outside,   null:false, foreign_key: true      
      t.timestamps
    end
  end
end
