class CreateRightFields < ActiveRecord::Migration[6.0]
  def change
    create_table :right_fields do |t|
      t.integer :right_field_id,  null: false
      t.references :member, null: false
      t.timestamps
    end
  end
end
