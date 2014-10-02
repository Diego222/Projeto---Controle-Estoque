class AddAttachmentAvatarToProdutos < ActiveRecord::Migration
  def self.up
    change_table :produtos do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :produtos, :avatar
  end
end
