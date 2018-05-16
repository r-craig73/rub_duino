require 'dino'
board = Dino::Board.new(Dino::TxRx.new)
@red_led = Dino::Components::Led.new(pin: 11, board: board)

def forever_wink(led)
  [:on, :off].cycle do |switch|
    led.send(switch)
    puts switch
    sleep 0.5
  end
end

def slow_wink(led)
  led.send(:on)
  puts :on
  sleep 2
  led.send(:off)
  puts :off
  sleep 2
end

def wink(led)
  led.send(:on)
  sleep 0.2
  led.send(:off)
  sleep 0.2
end

10.times do
  wink(@red_led)
end

3.times do
  slow_wink(@red_led)
end
