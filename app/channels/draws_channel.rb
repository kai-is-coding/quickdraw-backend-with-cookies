class DrawsChannel < ApplicationCable::Channel
  def subscribed
    # @playroom = Playroom.find params[:id]
    # stream_from 'draw'  #"current_user_#{current_user.id}"
    stream_from "room_#{params[:playroom]}"
    puts "JOINED CHANNEL 'draw'"

    # ActionCable.server.broadcast 'draw', { msg: 'HELLO!' }
    ActionCable.server.broadcast "room_#{params[:playroom]}", { msg: 'HELLO!' }
  end

  # event from the frontend client
  def send_line(data)
    puts "GOT send_line() ----------------------------------"
    p data
    # ActionCable.server.broadcast 'draw', data
    ActionCable.server.broadcast "room_#{params[:playroom]}", data
  end

  def send_message(data)
    puts "GOT send_message() =================="

    p data
    # ActionCable.server.broadcast 'draw', data
    ActionCable.server.broadcast "room_#{params[:playroom]}", data

  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
