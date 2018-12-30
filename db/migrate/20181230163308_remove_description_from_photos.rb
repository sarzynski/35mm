class RemoveDescriptionFromPhotos < ActiveRecord::Migration[5.2]
  def change
    remove_column :photos, :description, :string
  end
end
