class CreateSecondFields < ActiveRecord::Migration[6.0]
  def change
    create_table :second_fields do |t|
      t.integer :second_field_id,  null: false
      t.references :member, null: false
      t.timestamps
    end
  end
end
