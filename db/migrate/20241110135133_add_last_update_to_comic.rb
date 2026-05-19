class AddLastUpdateToComic < ActiveRecord::Migration[7.1]
  def change
    add_column :comics, :last_update, :datetime
  end
end
