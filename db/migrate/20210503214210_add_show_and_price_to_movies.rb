class AddShowAndPriceToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :show_at, :datetime
    add_column :movies, :price, :decimal
  end
end
