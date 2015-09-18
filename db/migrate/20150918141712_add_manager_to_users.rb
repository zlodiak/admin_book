class AddManagerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :manager, :boolean, :null => nil, :default => nil
  end
end
