# frozen_string_literal: true

class SensorsController < ApplicationController
  before_action :set_up_led, only: %i[on off]

  def index
    @sensors = Sensor.all
  end

  def show
    @sensor = Sensor.find(params[:id])
    render :show
  end

  def edit
    @sensor = Sensor.find(params[:id])
  end

  def update
    @sensor = Sensor.find(params[:id])
    if @sensor.update(sensor_params)
      flash[:notice] = 'Sensor is now updated'
      redirect_to sensors_path
    else
      render :edit
    end
  end

  def new
    @sensor = Sensor.new
  end

  def create
    @sensor = Sensor.new(sensor_params)
    if @sensor.save
      redirect_to sensors_path
      flash[:notice] = 'Sensor is added to the Sensors Table'
    else
      render :new
    end
  end

  def destroy
    @sensor = Sensor.find(params[:id])
    @sensor.destroy
    redirect_to sensors_path
    flash[:notice] = 'Sensor is removed from the Sensors Table'
  end

  private

  def set_up_led
    @led = Dino::Components::Led.new(pin: 9, board: board)
  end

  def sensor_params
    params.require(:sensor).permit(:name, :description, :pin, :kind)
  end
end
