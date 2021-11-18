class AddColumnContentToBookmark < ActiveRecord::Migration[6.0]
  def change
    add_column :bookmarks, :content, :string
  end
end
