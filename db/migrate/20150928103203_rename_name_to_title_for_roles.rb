class RenameNameToTitleForRoles < ActiveRecord::Migration
  def change
    rename_column :roles, :name, :title
  end
end
