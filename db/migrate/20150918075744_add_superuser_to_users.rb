class AddSuperuserToUsers < ActiveRecord::Migration
  def change
    add_column :users, :superadmin, :boolean, :null => nil, :default => nil
  end
end
