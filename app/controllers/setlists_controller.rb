class SetlistsController < ApplicationController

  def index
    @setlists = Setlist.all
  end

  def new
    @setlist = Setlist.new
  end

  def create
    @setlist = Setlist.new(setlist_params)

    if @setlist.save
      redirect_to setlists_path, notice: "Your setlist was created!"
    else
      render :new
    end
  end

  def update
    @setlist = Setlist.find(params[:id])
    if @setlist.update_attributes(setlist_params)
      redirect_to '/dashboard'
    else
      render :edit
    end
  end

  def show
    @setlist = Setlist.find_by(params[:id])
  end

  private
  def setlist_params
    params.require(:setlist).permit(:title)
  end
end
