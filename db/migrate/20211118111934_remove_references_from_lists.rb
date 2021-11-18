class RemoveReferencesFromLists < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :lists, :movies
    remove_foreign_key :lists, :bookmarks
  end
end
