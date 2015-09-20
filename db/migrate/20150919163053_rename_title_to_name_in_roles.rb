class RenameTitleToNameInRoles < ActiveRecord::Migration
  def change
    rename_column :roles, :title, :name
  end
end
