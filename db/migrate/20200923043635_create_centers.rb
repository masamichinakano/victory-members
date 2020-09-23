class CreateCenters < ActiveRecord::Migration[6.0]
  def change
    create_table :centers do |t|
      t.boolean :center_position, default: false, null: false
      t.references :member, foreign_key: true
      t.timestamps
    end
  end
end
