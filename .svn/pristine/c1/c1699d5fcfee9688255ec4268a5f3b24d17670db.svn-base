class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment_status
      t.date :comment_created
      t.string :coment_content
      t.integer :id_user
      t.integer :id_tweet

      t.timestamps
    end
  end
end
