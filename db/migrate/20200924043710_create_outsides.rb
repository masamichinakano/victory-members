class CreateOutsides < ActiveRecord::Migration[6.0]
  def change
    create_table :outsides do |t|
      t.boolean :outside_position, default: false, null: false
      t.references :member, null:false, foreign_key: true
      t.timestamps
    end
  end
end


