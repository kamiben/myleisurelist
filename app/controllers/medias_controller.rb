class MediasController < ApplicationController
  
  def new 
    @media = Media.new
  end
  
  def create
    @media = Media.new(params[:media])
    @media.save
    redirect_to medias_path
  end
  
  
  
  def index
    @media = Media.find(:first, :order => 'RANDOM()')

  end

end
