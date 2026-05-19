class AddVolumeToComic < ActiveRecord::Migration[7.1]
  def change
    add_column :comics, :start_volume, :integer
    add_column :comics, :end_volume, :integer
  end
end
