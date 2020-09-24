class CreateSeconds < ActiveRecord::Migration[6.0]
  def change
    create_table :seconds do |t|
      t.boolean :second_position, default: false, null: false
      t.references :member, null:false, foreign_key: true
      t.timestamps
    end
  end
end
