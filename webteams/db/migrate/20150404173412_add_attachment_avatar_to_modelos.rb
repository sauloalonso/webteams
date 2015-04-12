class AddAttachmentAvatarToModelos < ActiveRecord::Migration
  def self.up
    change_table :modelos do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :modelos, :avatar
  end
end
