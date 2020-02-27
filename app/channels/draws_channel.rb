class DrawsChannel < ApplicationCable::Channel
  def subscribed

    stream_from "room_#{params[:playroom]}"
    puts "JOINED CHANNEL 'draw'"


    ActionCable.server.broadcast "room_#{params[:playroom]}", { msg: 'HELLO!' }
  end

  # event from the frontend client
  def send_line(data)
    puts "GOT send_line() ----------------------------------"
    p data
    ActionCable.server.broadcast "room_#{params[:playroom]}", data
  end

  def send_message(data)
    puts "GOT send_message() =================="

    p data
    ActionCable.server.broadcast "room_#{params[:playroom]}", data

  end

  def send_time(data)
    puts "GOT send_time() =================="

    p data
    ActionCable.server.broadcast "room_#{params[:playroom]}", data

  end

  def send_word(data)
    puts "GOT send_word() =================="

    p data
    ActionCable.server.broadcast "room_#{params[:playroom]}", data

  end

  def send_game_status(data)
    puts "GOT send_game_status()+++++++++++++++"
    p data
    ActionCable.server.broadcast "room_#{params[:playroom]}", data
  end
  
  def send_find(data)
    puts "GOT send_find()+++++++++++++++"
    p data
    ActionCable.server.broadcast "room_#{params[:playroom]}", data
  end


  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
