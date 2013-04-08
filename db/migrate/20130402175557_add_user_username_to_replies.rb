class AddUserUsernameToReplies < ActiveRecord::Migration
  def change
    add_column :replies, :user_username, :string
  end
end
