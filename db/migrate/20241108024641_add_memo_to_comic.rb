class AddMemoToComic < ActiveRecord::Migration[7.1]
  def change
    add_column :comics, :memo, :text
  end
end
