class RenameColumnsConsulte < ActiveRecord::Migration
  def self.up
    rename_column(:consultes, :id_user, :user_id)
    rename_column(:consultes, :id_media, :media_id)
  end

  def self.down
    rename_column(:consultes, :user_id, :id_user)
    rename_column(:consultes, :media_id, :id_media)
  end
end
