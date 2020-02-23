class PlayroomsController < ApplicationController
  def new

  end

  def create
    @playroom = Playroom.new(@playroom_params)
    # if playroom.save
    #   serialized_data = ActiveModelSerializers::Adapter::Json.new(PlayroomSerializer.new(playroom)).serializable_hash
    #   ActionCable.server.broadcast 'playrooms_channel', serialized_data
    #   head :ok
    # end
  end

  def index
    @playrooms = Playroom.all
    render json: @playrooms, include: [:users]
  end

  def show
    @playroom = Playroom.find params[:id]
    render json:@playroom
  end

  def destroy
  end

  private
  def playroom_params
    params.require(:playroom).permit(:title, :users)
  end
end
