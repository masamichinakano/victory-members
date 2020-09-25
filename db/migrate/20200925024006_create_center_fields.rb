class CreateCenterFields < ActiveRecord::Migration[6.0]
  def change
    create_table :center_fields do |t|
      t.integer :center_field_id,  null: false
      t.references :member, null: false
      t.timestamps
    end
  end
end
