class CreateCatcherFields < ActiveRecord::Migration[6.0]
  def change
    create_table :catcher_fields do |t|
      t.integer :catcher_field_id,  null: false
      t.references :member, null: false
      t.timestamps
    end
  end
end
