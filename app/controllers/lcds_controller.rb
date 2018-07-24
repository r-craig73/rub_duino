# frozen_string_literal: true

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
  end

  def lcd_on
    @sensor = Sensor.find(params[:id])
    number = @sensor.pin
    board = Dino::Board.new(Dino::TxRx.new)
    @led = Dino::Components::Led.new(pin: number, board: board)
    sleep 1
    @led.send(:on)
    sleep 60 # 60 seconds timeout to not burn out the sensor
    @led.send(:off)
  end

  def lcd_off
    @sensor = Sensor.find(params[:id])
    number = @sensor.pin
    board = Dino::Board.new(Dino::TxRx.new)
    @led = Dino::Components::Led.new(pin: number, board: board)
    @led.send(:off)
  end

  def rgb_multicolor
    board = Dino::Board.new(Dino::TxRx.new)
    @rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)
    %i[red green blue cyan yellow magenta white off].each do |switch|
      led.send(switch)
      sleep 2
    end
  end
end
