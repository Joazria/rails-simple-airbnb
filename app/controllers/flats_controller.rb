class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  # GET /articles
  def index
    @flats = Flat.all
  end

  # GET /articles/1
  def show
  end

  # GET /articles/new
  def new
    @flat = Flat.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  def create
    @flat = Flat.new(flat_params)

    if @flat.save
      redirect_to @flat, notice: 'A new flat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /articles/1
  def update
    if @flat.update(flat_params)
      redirect_to @flat, notice: 'The flat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /articles/1
  def destroy
    @flat.destroy
    redirect_to flats_url, notice: 'The flat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat
      @flat = Flat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def flat_params
      params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
    end
end

