class PlayroomsController < ApplicationController
  def new

  end

  def create
    @playroom = Playroom.new(@playroom_params)

  end

  def index
    @playrooms = Playroom.all
    render :json => @playrooms.to_json( :include => [:users, :draw])

  end

  def show
    @playroom = Playroom.find params[:id]
    render :json => @playroom.to_json( :include => [:users, :draw])
  end

  def destroy
  end

  private
  def playroom_params
    params.require(:playroom).permit(:title, :users)
  end
end
