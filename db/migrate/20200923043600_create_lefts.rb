class CreateLefts < ActiveRecord::Migration[6.0]
  def change
    create_table :lefts do |t|
      t.boolean :left_position, default: false, null: false
      t.references :member, null:false, foreign_key: true
      t.timestamps
    end
  end
end
