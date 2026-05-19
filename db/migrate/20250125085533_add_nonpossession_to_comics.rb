class AddNonpossessionToComics < ActiveRecord::Migration[7.1]
  def change
    add_column :comics, :nonpossession, :integer
  end
end
