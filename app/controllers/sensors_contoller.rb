class SensorsController < ApplicationController
  before_filter :set_up_led, only: [:on, :off]

  def index
    @sensors = Sensor.all
  end

  def new
    @sensor = Sensor.new
  end

  def destroy
    @sensor = Sensor.find(params[:id])
    @sensor.destroy
    flash[:notice] = "The sensor is removed"
  end

  # def on
  #   @led.on
  #   render :nothing => true
  # end

  # def off
  #   @led.off
  #   render :nothing => true
  # end

private

  def set_up_led
    @sensor = Dino::Components::Led.new(pin: 13, board: board)
  end

end
