class AddConclusionToComics < ActiveRecord::Migration[7.1]
  def change
    add_column :comics, :conclusion, :boolean,default:false,null:false
  end
end
