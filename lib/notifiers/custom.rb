module Notifiers
  class Custom < Stoplight::Notifier::Base
    def notify(light, from_color, to_color, error)
      puts("[Custom] - Light: #{light.inspect} - From color: #{from_color} - To color #{to_color} - #{error}")
    end
  end
end
