class AddVisibleIdToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :visible_id, :integer
  end
end
