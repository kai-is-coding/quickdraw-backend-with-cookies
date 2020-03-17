# quickdraw-backend-with-cookies

## Introduction
It is a multiplayer drawing game. When users sign in, they can join playroom and select to be a drawer or a guesser. Drawer is provided a random word and draws on a canvas, and guesser should guess that word in 30 seconds.This application is using React as frontend. You can check Demo: https://kai-is-coding.github.io/quickdraw-frontend/#/, and frontend github link: https://github.com/kai-is-coding/quickdraw-frontend

## Backend Code Explaination
This application has two main models `playrooms users`, `playroom has_many users` and `user belongs to playroom`. Another model `draws` is created for future plans to track drawing histroy. 
Two channels `draws_channel playrooms_channel` are created for ActionCable broadcast. `playrooms_channel` is a public channel, any login users can see real-time changing in this channel.
```
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
```
`send_room_selection` is for displaying which spot has been selected. `draws_channel` is a private channel, only users in the same playroom can see real-time changing. It is determined by
```
 def subscribed

    stream_from "room_#{params[:playroom]}"
    puts "JOINED CHANNEL 'draw'"


    ActionCable.server.broadcast "room_#{params[:playroom]}", { msg: 'HELLO!' }
  end
```
, this channel is stream_from `room_#{params[:playroom]}`, which is defined in frontend when the ActionCable is generated. There are also few different methods in this channel to handel different data transforming in ActionCable.

## Authors and acknowledgement
I would like to thank my instructors, Luke Hammer, Josh Parry and Ana Silva who is helping me get through the entire project. Also, I would like the authors of this article https://medium.com/how-i-get-it/react-with-rails-user-authentication-8977e98762f2. 
