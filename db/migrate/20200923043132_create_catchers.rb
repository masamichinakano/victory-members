class CreateCatchers < ActiveRecord::Migration[6.0]
  def change
    create_table :catchers do |t|
      t.boolean :catcher_position, default: false, null: false
      t.references :member, foreign_key: true
      t.timestamps
    end
  end
end
