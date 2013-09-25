class GenrelizationsController < ApplicationController
  before_action :set_genrelization, only: [:show, :edit, :update, :destroy]

  def show
  end

  def create
    @genrelization = Genrelization.new genrelization_params
    @genrelization.creator_id = current_audiophile.id
    @genrelization.save
    
    redirect_to @genrelization
  end
  
  private
    def set_genrelization
      @genrelization = Genrelization.find(params[:id])
    end
  
    def genrelization_params
      params.require(:genrelization).permit(:song_id, :genre_id)
    end
end