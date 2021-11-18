class AddBookmakReferenceToList < ActiveRecord::Migration[6.0]
  def change
    add_reference :lists, :bookmark, foreign_key: true
  end
end
