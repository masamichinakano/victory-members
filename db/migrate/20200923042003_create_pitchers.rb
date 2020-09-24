class CreatePitchers < ActiveRecord::Migration[6.0]
  def change
    create_table :pitchers do |t|
      t.boolean :pitcher_position, default: false, null: false
      t.references :member, null:false, foreign_key: true
      t.timestamps
    end
  end
end



t.string :match,         null:false
t.references :pitcher,   null:false, foreign_key: true
t.references :catcher,   null:false, foreign_key: true
t.references :first,     null:false, foreign_key: true
t.references :second,    null:false, foreign_key: true
t.references :third,     null:false, foreign_key: true
t.references :short,     null:false, foreign_key: true
t.references :left,      null:false, foreign_key: true
t.references :center,    null:false, foreign_key: true
t.references :right,     null:false, foreign_key: true
