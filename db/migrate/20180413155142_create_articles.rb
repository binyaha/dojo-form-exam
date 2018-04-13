class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.string :image
      t.string :replies_count
      t.string :viewed_count
      t.string :status
      t.string :auth
      t.integer :user_id
      t.integer :category_id


      t.timestamps
    end
  end
end
