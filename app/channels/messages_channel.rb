class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "message"

    puts "JOINED CHANNEL message"

    ActionCable.server.broadcast 'message', {msg: 'HELLO from MessagesChannel!'}
  end

  def send_message(data)
    puts "GOT send_message() =================="

    p data
    ActionCable.server.broadcast 'message', data

  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
