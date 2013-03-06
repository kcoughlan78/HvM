class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :by
      t.text :response
      t.references :post

      t.timestamps
    end
    add_index :replies, :post_id
  end
end
