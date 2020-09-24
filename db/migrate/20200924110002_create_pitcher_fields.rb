class CreatePitcherFields < ActiveRecord::Migration[6.0]
  def change
    create_table :pitcher_fields do |t|
      t.string :name,  null: false
      t.references :member_id, null: false
      t.timestamps
    end
  end
end
