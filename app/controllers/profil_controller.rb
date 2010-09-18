class ProfilController < ApplicationController
  before_filter :authenticate_user!
 
  def show
    @user = current_user
    @media_list = current_user.medias_consultes
  end

end
