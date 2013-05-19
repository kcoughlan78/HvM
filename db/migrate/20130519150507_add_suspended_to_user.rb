class AddSuspendedToUser < ActiveRecord::Migration
  def change
    add_column :users, :suspended, :string, :default => "No"
  end
end
