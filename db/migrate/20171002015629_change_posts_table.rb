class ChangePostsTable < ActiveRecord::Migration[5.1]
  def change
    remove_column(:posts, :category, :string)

    create_table(:awws) do |t|
      t.column(:title, :string)
      t.column(:link, :string)
      t.column(:img_link, :string)

      t.timestamp
    end
  end
end
