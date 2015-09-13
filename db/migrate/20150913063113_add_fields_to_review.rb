class AddFieldsToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :name, :string
    add_column :reviews, :email, :string
    add_column :reviews, :message, :text
  end
end
