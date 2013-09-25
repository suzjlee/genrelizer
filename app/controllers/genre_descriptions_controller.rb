class GenreDescriptionsController < ApplicationController
  before_action :set_genre_description, only: [:show, :edit, :update, :destroy]

  # GET /genre_descriptions
  # GET /genre_descriptions.json
  def index
    @genre_descriptions = GenreDescription.all
  end

  # GET /genre_descriptions/1
  # GET /genre_descriptions/1.json
  def show
  end

  # GET /genre_descriptions/new
  def new
    @genre_description = GenreDescription.new
  end

  # GET /genre_descriptions/1/edit
  def edit
  end

  # POST /genre_descriptions
  # POST /genre_descriptions.json
  def create
    @genre_description = GenreDescription.new(genre_description_params)
    @genre_description.creator_id = current_audiophile.id

    respond_to do |format|
      if @genre_description.save
        format.html { redirect_to @genre_description, notice: 'Genre description was successfully created.' }
        format.json { render action: 'show', status: :created, location: @genre_description }
      else
        format.html { render action: 'new' }
        format.json { render json: @genre_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genre_descriptions/1
  # PATCH/PUT /genre_descriptions/1.json
  def update
    respond_to do |format|
      if @genre_description.update(genre_description_params)
        format.html { redirect_to @genre_description, notice: 'Genre description was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @genre_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genre_descriptions/1
  # DELETE /genre_descriptions/1.json
  def destroy
    @genre_description.destroy
    respond_to do |format|
      format.html { redirect_to genre_descriptions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genre_description
      @genre_description = GenreDescription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genre_description_params
      params.require(:genre_description).permit(:genre_id, :description_id)
    end
end
