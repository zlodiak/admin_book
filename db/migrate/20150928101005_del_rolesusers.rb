class DelRolesusers < ActiveRecord::Migration
  def change
    drop_table :roles_users
  end
end
