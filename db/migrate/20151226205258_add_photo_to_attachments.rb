class AddPhotoToAttachments < ActiveRecord::Migration
def up
    add_attachment :attachments, :photo
  end

  def down
    remove_attachment :attachments, :photo
  end
end
