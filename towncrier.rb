require 'twitter'
require 'date'
class TownCrier
  class << self
    def run(username, password)
      Twitter::Base.new(username, password).update(message)
    end
    
    def time
      Time.now
    end
    
    def hour
      time.hour
    end
    
    def date_formatted
      time.strftime("%e %B, %Y")
    end
    
    def message
      return "It's midnight on a new day, #{date_formatted}#{seasonal_greeting}" if hour == 0
      "It's #{hour} o'clock. "
    end
    
    def seasonal_greeting
      return " Happy Christmas!" if Date.today == Date.parse('25 Dec 2008')
    end
  end
end