class RenameSuperUserToAdminInUsers < ActiveRecord::Migration
  def change
    rename_column :users, :super_user, :admin
  end
end
