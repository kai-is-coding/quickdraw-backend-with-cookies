class DrawsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from 'draw'  #"current_user_#{current_user.id}"
    stream_from "current_user_#{current_user.id}"
    puts "JOINED CHANNEL 'draw'"

    # ActionCable.server.broadcast 'draw', { msg: 'HELLO!' }
    ActionCable.server.broadcast "current_user_#{current_user.id}", { msg: 'HELLO!' }
  end

  # event from the frontend client
  def send_line(data)
    puts "GOT send_line() ----------------------------------"
    p data
    ActionCable.server.broadcast "current_user_#{current_user.id}", data
  end

  def send_message(data)
    puts "GOT send_message() =================="

    p data
    ActionCable.server.broadcast "current_user_#{current_user.id}", data

  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
