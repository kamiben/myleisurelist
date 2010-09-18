class Consulte < ActiveRecord::Base
  belongs_to :media
  belongs_to :user 
end
