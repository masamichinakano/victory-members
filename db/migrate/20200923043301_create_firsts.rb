class CreateFirsts < ActiveRecord::Migration[6.0]
  def change
    create_table :firsts do |t|
      t.boolean :first_position, default: false, null: false
      t.references :member, foreign_key: true
      t.timestamps
    end
  end
end
