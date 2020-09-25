class CreateLeftFields < ActiveRecord::Migration[6.0]
  def change
    create_table :left_fields do |t|
      t.integer :left_field_id,  null: false
      t.references :member, null: false
      t.timestamps
    end
  end
end
