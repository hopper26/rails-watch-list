class RemoveForeignKeyToMovies < ActiveRecord::Migration[7.0]
  def change
    remove_reference :movies, :list, foreign_key: true
  end
end
