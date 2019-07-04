require '/smartphone'

class User
  attr_accessor :smartphone
  def initialize
    @smartphone = SmartPhone::Iphone.new
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

p User.new.watch_video
