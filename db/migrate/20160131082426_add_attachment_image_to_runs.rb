class AddAttachmentImageToRuns < ActiveRecord::Migration
  def self.up
    change_table :runs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :runs, :image
  end
end
