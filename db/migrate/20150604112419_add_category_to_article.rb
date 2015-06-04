class AddCategoryToArticle < ActiveRecord::Migration
  def change
    add_reference :articles, :category, index: true, foreign_key: true
    add_column :articles, :author, :string
  end
end
