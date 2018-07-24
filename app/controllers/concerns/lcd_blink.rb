# frozen_string_literal: true

require 'bundler/setup'
require 'dino'

board = Dino::Board.new(Dino::TxRx.new)
@one_led = Dino::Components::Led.new(pin: 11, board: board)
@rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)

def forever_wink(led)
  %i[on off].cycle do |switch|
    led.send(switch)
    p switch
    sleep 0.5
  end
end

def slow_wink(led)
  led.on
  p :on
  sleep 2
  led.off
  p :off
  sleep 2
end

def wink(led)
  led.on
  sleep 0.2
  led.off
  sleep 0.2
end

def rgb_twocolor(led)
  %i[red green blue cyan yellow magenta white off].each do |switch|
    p switch
    led.send(switch)
    sleep 2
  end
end

def rgb_color(led)
  led.analog_write(3, 255)
  led.analog_write(5, 0)
  led.analog_write(6, 0)

  # non dino gem COLORS
  # color(255, 149, 7) orange
  # color(75, 0, 130) indigo
  # color(148, 0, 211) violet
end

rgb_twocolor(@rgb_led)

# rgb_color(@rgb_led)

# 10.times do
#   wink(@one_led)
# end
#
# 3.times do
#   slow_wink(@one_led)
# end

# 2.times do
#   rgb_twocolor(@rgb_led)
# end
