class AddCameraFilmIsoToPhoto < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :camera, :string
    add_column :photos, :film, :string
    add_column :photos, :iso, :integer
  end
end
