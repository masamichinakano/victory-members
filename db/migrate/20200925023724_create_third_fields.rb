class CreateThirdFields < ActiveRecord::Migration[6.0]
  def change
    create_table :third_fields do |t|
      t.integer :third_field_id,  null: false
      t.references :member, null: false
      t.timestamps
    end
  end
end
