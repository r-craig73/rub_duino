require 'dino'
board = Dino::Board.new(Dino::TxRx.new)
led = Dino::Components::Led.new(pin: 13, board: board)

sleep 3

led.when_data_received do |data|
  puts data
end
