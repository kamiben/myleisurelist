class AddCategorieToMedia < ActiveRecord::Migration
  def self.up
    add_column :medias, :categorie, :string
  end

  def self.down
    remove_column :medias, :categorie
  end
end
