class CreateThirds < ActiveRecord::Migration[6.0]
  def change
    create_table :thirds do |t|
      t.boolean :third_position, default: false, null: false
      t.references :member, null:false, foreign_key: true
      t.timestamps
    end
  end
end
