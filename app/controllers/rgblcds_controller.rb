# frozen_string_literal: true

class RgblcdsController < ApplicationController
  require 'dino'

  def wink(single_led)
    single_led.on
    sleep 0.1
    single_led.off
    sleep 0.1
  end

  def rgb_multicolor
    @sensor = Sensor.find(params[:id])
    number = @sensor.pin
    board = Dino::Board.new(Dino::TxRx.new)
    if number == 3
      @rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)
      %i[red green blue cyan yellow magenta white off].each do |switch|
        @rgb_led.send(switch)
        sleep 2
      end
    end
  end

  def rgb_red
    @sensor = Sensor.find(params[:id])
    number = @sensor.pin
    board = Dino::Board.new(Dino::TxRx.new)
    if number == 3
      @rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)
      @rgb_led.send(:red)
      sleep 60 # 60 seconds timeout to not burn out the sensor
      @rgb_led.send(:off)
    end
  end

  def rgb_green
    @sensor = Sensor.find(params[:id])
    number = @sensor.pin
    board = Dino::Board.new(Dino::TxRx.new)
    if number == 3
      @rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)
      @rgb_led.send(:green)
      sleep 60 # 60 seconds timeout to not burn out the sensor
      @rgb_led.send(:off)
    end
  end

  def rgb_blue
    @sensor = Sensor.find(params[:id])
    number = @sensor.pin
    board = Dino::Board.new(Dino::TxRx.new)
    if number == 3
      @rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)
      @rgb_led.send(:blue)
      sleep 60 # 60 seconds timeout to not burn out the sensor
      @rgb_led.send(:off)
    end
  end

  def rgb_cyan
    @sensor = Sensor.find(params[:id])
    number = @sensor.pin
    board = Dino::Board.new(Dino::TxRx.new)
    if number == 3
      @rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)
      @rgb_led.send(:cyan)
      sleep 60 # 60 seconds timeout to not burn out the sensor
      @rgb_led.send(:off)
    end
  end

  def rgb_yellow
    @sensor = Sensor.find(params[:id])
    board = Dino::Board.new(Dino::TxRx.new)
    @rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)
    @rgb_led.send(:yellow)
    sleep 60 # 60 seconds timeout to not burn out the sensor
    @rgb_led.send(:off)
  end

  def rgb_mangenta
    @sensor = Sensor.find(params[:id])
    board = Dino::Board.new(Dino::TxRx.new)
    @rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)
    @rgb_led.send(:mangenta)
    sleep 60 # 60 seconds timeout to not burn out the sensor
    @rgb_led.send(:off)
  end

  def rgb_white
    @sensor = Sensor.find(params[:id])
    board = Dino::Board.new(Dino::TxRx.new)
    @rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)
    @rgb_led.send(:white)
    sleep 60 # 60 seconds timeout to not burn out the sensor
    @rgb_led.send(:off)
  end

  def rgb_off
    @sensor = Sensor.find(params[:id])
    board = Dino::Board.new(Dino::TxRx.new)
    @rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)
    @rgb_led.send(:off)
  end
end
