class CreateRights < ActiveRecord::Migration[6.0]
  def change
    create_table :rights do |t|
      t.boolean :right_position, default: false, null: false
      t.references :member, null:false, foreign_key: true
      t.timestamps
    end
  end
end
