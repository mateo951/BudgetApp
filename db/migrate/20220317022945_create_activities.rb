class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.decimal :amount, precision: 10, scale: 2

      t.timestamps
    end
    add_column :activities, :author_id, :bigint
    add_foreign_key :activities, :users, column: :author_id
    add_index :activities, :author_id
  end
end
