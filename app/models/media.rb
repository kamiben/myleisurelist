class Media < ActiveRecord::Base
  validates_presence_of :nom, :categorie
end
