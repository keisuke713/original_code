module SmartPhone
  class Base
    def play_video
      raise "NotImplementError"
    end

    def play_sound
      raise "NotImplementError"
    end

    def send_message
      raise "NotImplementError"
    end

    def take_a_photo
      raise "NotImplementError"
    end
  end

  class Iphone < Base
    def play_video
      'high resolution'
    end

    def play_sound
      'nice sound!'
    end

    def send_message
      'i Message'
    end

    def take_a_photo
      'Beautiful photo!'
    end
  end

  class Android < Base
    def play_video
      'Many category!'
    end

    def play_sound
      'many music'
    end

    def send_message
      'sns'
    end

    def take_a_photo
      'Ohhhhhh'
    end
  end
end
