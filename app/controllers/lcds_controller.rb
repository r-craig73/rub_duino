# frozen_string_literal: true

# Different LCD methods representing sensor buttons
class LcdsController < ApplicationController
  require 'dino'

  def wink(single_led)
    single_led.on
    sleep 0.1
    single_led.off
    sleep 0.1
  end

  def lcd_wink
    @sensor = Sensor.find(params[:id])
    number = @sensor.pin
    board = Dino::Board.new(Dino::TxRx.new)
    @led = Dino::Components::Led.new(pin: number, board: board)
    sleep 1
    10.times do
      wink(@led)
    end
    redirect_to @sensor
  end

  def lcd_on
    @sensor = Sensor.find(params[:id])
    number = @sensor.pin
    board = Dino::Board.new(Dino::TxRx.new)
    @led = Dino::Components::Led.new(pin: number, board: board)
    sleep 1
    @led.send(:on)
    sleep 30 # 30 seconds timeout to not burn out the sensor
    @led.send(:off)
    redirect_to @sensor
  end

  def lcd_off
    @sensor = Sensor.find(params[:id])
    number = @sensor.pin
    board = Dino::Board.new(Dino::TxRx.new)
    @led = Dino::Components::Led.new(pin: number, board: board)
    @led.send(:off)
    redirect_to @sensor
  end
end
