class CreateConsultes < ActiveRecord::Migration
  def self.up
    create_table :consultes do |t|
      t.integer :id_user
      t.integer :id_media
      t.string :etat
      t.integer :nb_vus
      t.integer :note
      t.text :commentaire

      t.timestamps
    end
  end

  def self.down
    drop_table :consultes
  end
end
