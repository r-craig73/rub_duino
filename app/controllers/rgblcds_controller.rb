# frozen_string_literal: true

# Different RGB LCD methods representing sensor buttons
class RgblcdsController < ApplicationController
  require 'dino'

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
    redirect_to @sensor
  end

  def rgb_red
    @sensor = Sensor.find(params[:id])
    number = @sensor.pin
    board = Dino::Board.new(Dino::TxRx.new)
    if number == 3
      @rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)
      @rgb_led.send(:red)
      sleep 30 # 30 seconds timeout to not burn out the sensor
      @rgb_led.send(:off)
    end
    redirect_to @sensor
  end

  def rgb_green
    @sensor = Sensor.find(params[:id])
    number = @sensor.pin
    board = Dino::Board.new(Dino::TxRx.new)
    if number == 3
      @rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)
      @rgb_led.send(:green)
      sleep 30 # 30 seconds timeout to not burn out the sensor
      @rgb_led.send(:off)
    end
    redirect_to @sensor
  end

  def rgb_blue
    @sensor = Sensor.find(params[:id])
    number = @sensor.pin
    board = Dino::Board.new(Dino::TxRx.new)
    if number == 3
      @rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)
      @rgb_led.send(:blue)
      sleep 30 # 30 seconds timeout to not burn out the sensor
      @rgb_led.send(:off)
    end
    redirect_to @sensor
  end

  def rgb_cyan
    @sensor = Sensor.find(params[:id])
    number = @sensor.pin
    board = Dino::Board.new(Dino::TxRx.new)
    if number == 3
      @rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)
      @rgb_led.send(:cyan)
      sleep 30 # 30 seconds timeout to not burn out the sensor
      @rgb_led.send(:off)
    end
    redirect_to @sensor
  end

  def rgb_yellow
    @sensor = Sensor.find(params[:id])
    number = @sensor.pin
    board = Dino::Board.new(Dino::TxRx.new)
    if number == 3
      @rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)
      @rgb_led.send(:yellow)
      sleep 30 # 30 seconds timeout to not burn out the sensor
      @rgb_led.send(:off)
    end
    redirect_to @sensor
  end

  def rgb_magenta
    @sensor = Sensor.find(params[:id])
    number = @sensor.pin
    board = Dino::Board.new(Dino::TxRx.new)
    if number == 3
      @rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)
      @rgb_led.send(:magenta)
      sleep 30 # 30 seconds timeout to not burn out the sensor
      @rgb_led.send(:off)
    end
    redirect_to @sensor
  end

  def rgb_white
    @sensor = Sensor.find(params[:id])
    number = @sensor.pin
    board = Dino::Board.new(Dino::TxRx.new)
    if number == 3
      @rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)
      @rgb_led.send(:white)
      sleep 30 # 30 seconds timeout to not burn out the sensor
      @rgb_led.send(:off)
    end
    redirect_to @sensor
  end

  def rgb_off
    @sensor = Sensor.find(params[:id])
    number = @sensor.pin
    board = Dino::Board.new(Dino::TxRx.new)
    if number == 3
      @rgb_led = Dino::Components::RgbLed.new(pins: { red: 3, green: 5, blue: 6 }, board: board)
      @rgb_led.send(:off)
    end
    redirect_to @sensor
  end
end
