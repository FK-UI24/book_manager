class AddPublisherToComics < ActiveRecord::Migration[7.1]
  def change
    add_column :comics, :publisher, :string
  end
end
