class AudiophilesController < ApplicationController
  before_action :set_audiophile, only: :show
  
  def show
    
  end
  
  def index
    
  end
  
  private
    def set_audiophile
      @audiophile = Audiophile.find(params[:id])
    end
    
end
