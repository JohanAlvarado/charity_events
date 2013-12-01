class AddAdminIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :admin_id, :string
    add_index :events, :admin_id
  end
end
