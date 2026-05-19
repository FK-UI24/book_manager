class AddIndividualtotalToComic < ActiveRecord::Migration[7.1]
  def change
    add_column :comics, :individualtotal, :integer
  end
end
