class DelManagerFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :manager
  end
end
