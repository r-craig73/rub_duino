class SensorsController < ApplicationController
  # before_filter :set_up_led, only: [:on, :off]
  # include LcdBlink
  before_action :set_up_led, only: [:on, :off]

  def index
    @sensors = Sensor.all
  end

  def new
    @sensor = Sensor.new
  end

  def create
   @sensor = sensor.new(sensor_params)
   if @sensor.save
     flash[:notice] = "Your sensor is added to the list"
     redirect_to sensors_path
   else
     render :new
   end
 end

  def destroy
    @sensor = Sensor.find(params[:id])
    @sensor.destroy
    flash[:notice] = "The sensor is removed"
  end

private

  def set_up_led
    @led = Dino::Components::Led.new(pin: 13, board: board)
  end

  def sensor_params
     params.require(:sensor).permit(:name, :description, :pin)
  end

end
