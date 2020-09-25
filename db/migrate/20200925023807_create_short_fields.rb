class CreateShortFields < ActiveRecord::Migration[6.0]
  def change
    create_table :short_fields do |t|
      t.integer :short_field_id,  null: false
      t.references :member, null: false
      t.timestamps
    end
  end
end
