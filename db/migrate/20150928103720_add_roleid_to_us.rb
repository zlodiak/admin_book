class AddRoleidToUs < ActiveRecord::Migration
  def change
    add_column :users, :role_id, :integer, :default => nil
  end
end
