module LcdOnOff
  require 'dino'
  board = Dino::Board.new(Dino::TxRx.new)
  led = Dino::Components::Led.new(pin: 13, board: board)

  


end
