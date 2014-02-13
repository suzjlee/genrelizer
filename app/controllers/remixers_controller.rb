class RemixersController < ApplicationController
  before_action :set_remixer, only: [:show, :edit, :update, :destroy]

  # GET /remixers
  # GET /remixers.json
  def index
    @remixers = Remixer.all
  end

  # GET /remixers/1
  # GET /remixers/1.json
  def show
  end

  # GET /remixers/new
  def new
    @remixer = Remixer.new
  end

  # GET /remixers/1/edit
  def edit
  end

  # POST /remixers
  # POST /remixers.json
  def create
    @remixer = Remixer.new(remixer_params)

    respond_to do |format|
      if @remixer.save
        format.html { redirect_to @remixer, notice: 'Remixer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @remixer }
      else
        format.html { render action: 'new' }
        format.json { render json: @remixer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /remixers/1
  # PATCH/PUT /remixers/1.json
  def update
    respond_to do |format|
      if @remixer.update(remixer_params)
        format.html { redirect_to @remixer, notice: 'Remixer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @remixer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /remixers/1
  # DELETE /remixers/1.json
  def destroy
    @remixer.destroy
    respond_to do |format|
      format.html { redirect_to remixers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remixer
      @remixer = Remixer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def remixer_params
      params.require(:remixer).permit(:song_id, :artist_id, :creator_id)
    end
end
