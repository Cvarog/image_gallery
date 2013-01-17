class PaintingsController < ApplicationController

  def index
    @paintings = Painting.all
  end

  def show
    @painting = Painting.find(params[:id])
  end

  def new
    @painting = Painting.new
  end 

  def create
    @painting = Painting.new(params[:painting])
    if @painting.save
      redirect_to paintings_path
    else
      render "new"
    end
  end

  def destroy

  end

  def edit

  end

  def update

  end
end
