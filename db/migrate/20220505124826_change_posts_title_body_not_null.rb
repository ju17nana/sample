class ChangePostsTitleBodyNotNull < ActiveRecord::Migration[5.2]
  def up
    change_column :posts, :title, :string, null: false
    change_column :posts, :body, :text, null: false
  end
  def down
    change_column :posts, :title, :string
    change_column :posts, :body, :text
  end
end
