class CreateArticle < ActiveRecord::Migration[6.0]
  # This is created by typing: rails generate migration create_article
  # But we need columns in our table...
  def change
    create_table :articles do |t|
      t.string :title
    end
  end
end
