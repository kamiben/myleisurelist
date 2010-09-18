class CreateMedias < ActiveRecord::Migration
  def self.up
    create_table :medias do |t|
      t.string :nom
      t.text :description
      t.integer :nbepisodes
      t.string :auteur

      t.timestamps
    end
  end

  def self.down
    drop_table :medias
  end
end
