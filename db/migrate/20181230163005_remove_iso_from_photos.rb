class RemoveIsoFromPhotos < ActiveRecord::Migration[5.2]
  def change
    remove_column :photos, :iso, :integer
  end
end
