class CreatePitcherFields < ActiveRecord::Migration[6.0]
  def change
    create_table :pitcher_fields do |t|
      t.integer :pitcher_field_id,  null: false
      t.references :member, null: false
      t.timestamps
    end
  end
end
