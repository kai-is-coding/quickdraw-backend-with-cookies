class DrawsController < ApplicationController
  def new
  end

  def create
  end

  def index
    draws = Draw.all
    render json:draws
  end

  def show
    draw = Draw.find params[:id]
    render json:draw
  end

  def edit
    draw = Draw.find params[:id]

  end

  def update
    draw = Draw.find params[:id]
    draw.update draw_params
    render json:draw
    # serialized_data = ActiveModelSerializers::Adapter::Json.new(
    #     DrawSerializer.new(draw)
    #   ).serializable_hash
      # ActionCable.server.broadcast 'draw', serialized_data #current_user, serialized_data
      # head :ok
  end

  def destroy
  end

  private
  def draw_params
    params.require(:draw).permit(:id, :name, :data, :playroom_id)
  end
end
