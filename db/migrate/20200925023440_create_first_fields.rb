class CreateFirstFields < ActiveRecord::Migration[6.0]
  def change
    create_table :first_fields do |t|
      t.integer :first_field_id,  null: false
      t.references :member, null: false
      t.timestamps
    end
  end
end
