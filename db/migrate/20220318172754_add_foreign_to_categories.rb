class AddForeignToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :author_id, :bigint
    add_foreign_key :categories, :users, column: :author_id
    add_index :categories, :author_id
  end
end