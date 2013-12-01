class AddAdminIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :admin, :string
    add_index :events, :admin
  end
end
