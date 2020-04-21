class RenameEventUsersIdToEventUserId < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :event_users_id, :event_user_id
  end
end
