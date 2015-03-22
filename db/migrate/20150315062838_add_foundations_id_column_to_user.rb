class AddFoundationsIdColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :foundations_ids, :string
  end
end
