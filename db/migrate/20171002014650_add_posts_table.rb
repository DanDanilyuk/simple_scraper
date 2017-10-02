class AddPostsTable < ActiveRecord::Migration[5.1]
  def change
    create_table(:posts) do |t|
      t.column(:category, :string)
      t.column(:title, :string)
      t.column(:link, :string)
      t.column(:img_link, :string)

      t.timestamp
    end
  end
end
