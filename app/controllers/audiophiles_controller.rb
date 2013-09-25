class AudiophilesController < ApplicationController
  before_action :set_audiophile, only: [:show, :edit, :update]
  
  def show
    
  end
  
  def index
    
  end
  
  def edit
    redirect_to current_audiophile unless current_audiophile == @audiophile
  end
  
  def update
    @audiophile.update audiophile_params
    redirect_to @audiophile
  end
  
  private
    def set_audiophile
      @audiophile = Audiophile.find(params[:id])
    end
    
    def audiophile_params
      params.require(:audiophile).permit(:first_name, :last_name, :hometown, :phone, :alias, :current_genre_of_choice_id)
    end
end
