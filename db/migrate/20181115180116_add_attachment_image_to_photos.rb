class AddAttachmentImageToPhotos < ActiveRecord::Migration[5.2]
  def self.up
    change_table :photos do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :photos, :file
  end
end
