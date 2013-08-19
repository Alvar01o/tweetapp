class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.integer :id_follow
      t.integer :id_user

      t.timestamps
    end
  end
end
