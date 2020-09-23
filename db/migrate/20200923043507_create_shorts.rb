class CreateShorts < ActiveRecord::Migration[6.0]
  def change
    create_table :shorts do |t|
      t.boolean :short_position, default: false, null: false
      t.references :member, foreign_key: true
      t.timestamps
    end
  end
end
