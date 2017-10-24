class ArtworksController < ApplicationController

  def index
    @artwork = Artwork.find_by(artist_id: params[:user_id])
    render json: @artwork
    # render json: params
  end

  def create
    # render json: params
    @artwork = Artwork.new(artwork_params)
    if @artwork.save
      render json: @artwork
    else
      render json: @artwork.errors.full_messages
    end
  end

  def show
    @artwork = Artwork.find_by(id: params[:id])
    if @artwork
      render json: @artwork
    else
      render plain: "Artwork not found"
    end
  end

  def destroy
    @artwork = Artwork.find_by(id: params[:id])
    if @artwork
      @artwork.delete
    else
      render plain: "Artwork does not exist"
    end
  end

  def update
    @artwork = Artwork.find_by(id: params[:id])
    if @artwork
      @artwork.update(artwork_params)
      render json: @artwork
    else
      render plain: "Artwork does not exist"
    end
  end

  private

  def artwork_params
    params.require(:artworks).permit(:title, :image_url, :artist_id)
  end
end
