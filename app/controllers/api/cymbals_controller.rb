class Api::CymbalsController < ApplicationController
  def index
    @cymbals = Cymbal.all
    render "index.json.jbuilder"
  end

  def create
    @cymbal = Cymbal.new(
      make: params[:make],
      model: params[:model],
      price: params[:price],
      description: params[:description]
    )
    @cymbal.save
    render "show.json.jbuilder"
  end

  def show
    @cymbal = Cymbal.find_by(id:params[:id])
    render "show.json.jbuilder"
  end

  def update
    @cymbal = Cymbal.find_by(id:params[:id])
    @cymbal.update(
      make: params[:make],
      model: params[:model],
      price: params[:price],
      description: params[:description])
    render "show.json.jbuilder"
  end

  def destroy
    @cymbal = Cymbal.find_by(id: params[:id])
    @cymbal.destroy
    render json: {message: "Cymbal successfully destroyed."}
  end
end


