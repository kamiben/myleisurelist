class MediasController < ApplicationController
  
  def new 
    @media = Media.new
  end
  
  def create
    @media = Media.new(params[:media])
    if @media.save
      flash[:notice] = 'Nouveau média enregistré avec succès'
      redirect_to medias_path
    else
      render :action => 'new'
    end
  end
  
  def index
    @media = Media.find(:first, :order => 'RANDOM()')
  end
  
  def show
    @media = Media.find(params[:id])
  end

end
