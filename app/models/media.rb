class Media < ActiveRecord::Base
  validates_presence_of :nom, :categorie
  has_many :consultes
  
    def to_param
      "#{id}-#{nom.gsub(/\W/, '-').downcase}"
    end

end
