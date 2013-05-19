class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.integer :user_id
      t.string :location
      t.text :message
      t.string :offender

      t.timestamps
    end
  end
end
