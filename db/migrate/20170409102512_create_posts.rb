class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.timestamps null: false
      t.string :writer
      t.string :title
      t.string :content
    end
  end
end
