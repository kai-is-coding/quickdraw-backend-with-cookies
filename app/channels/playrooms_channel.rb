class PlayroomsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "playrooms"
    puts "JOINED CHANNEL 'playrooms'"

    ActionCable.server.broadcast "playrooms", {msg: "HELLO from playrooms channel"}
  end

  def send_room_selection(data)
    puts "GOT send_room_selection()+++++++++++++++"
    p data
    ActionCable.server.broadcast "playrooms", data
  end



  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
