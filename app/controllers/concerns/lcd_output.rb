# frozen_string_literal: true

# Pratice ruby scripts to 'record' LED signal vs. time
require 'dino'
board = Dino::Board.new(Dino::TxRx.new)
led = Dino::Components::Led.new(pin: 11, board: board)

sleep 3

led.when_data_received do |data|
  puts data
end
