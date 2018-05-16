class LcdsController < ApplicationController
  require 'dino'



  def lcd_wink
    board = Dino::Board.new(Dino::TxRx.new)
    @led = Dino::Components::Led.new(pin: 13, board: board)
    sleep 1
    5.times do
      @led.send(:on)
      sleep 0.2
      @led.send(:off)
      sleep 0.2
    end
    redirect_to sensors_path
  end

  def lcd_on
    board = Dino::Board.new(Dino::TxRx.new)
    @led = Dino::Components::Led.new(pin: 13, board: board)
    sleep 1
    @led.send(:on)
    redirect_to sensors_path
  end

  def lcd_off
    board = Dino::Board.new(Dino::TxRx.new)
    @led = Dino::Components::Led.new(pin: 13, board: board)
    @led.send(:off)
    redirect_to sensors_path
  end

end
