class AddMovieReferenceToList < ActiveRecord::Migration[6.0]
  def change
    add_reference :lists, :movie, foreign_key: true
  end
end
