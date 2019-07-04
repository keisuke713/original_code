require './smartphone/smartphone'

class User
  attr_accessor :smartphone
  def initialize(smartphone)
    @smartphone = smartphone
  end

  def watch_video
    smartphone.play_video
  end

  def listen_music
    smartphone.play_sound
  end

  def send_message
    smartphone.send_message
  end

  def take_a_photo
    smartphone.take_a_photo
  end
end

p User.new(SmartPhone::Android.new).take_a_photo
