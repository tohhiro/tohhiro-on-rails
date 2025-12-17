class CreatePosts < ActiveRecord::Migration[7.1]
  # このマイグレーションはpostsテーブルを作成するためのもの
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
