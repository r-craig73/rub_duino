# frozen_string_literal: true

Sensor.destroy_all
# Measure.destroy_all

sensor_names = ['Red LED', 'RGB LED', 'Blue LED', 'Large Fan']
sensor_details = ['A simple Red LED', 'A tri-color RGB LED', 'A single Blue LED', 'A motor with a fan that can blow away cats, dog and people']
sensor_kinds = ['Digital', 'Digital', 'Digital', 'Analog']
sensor_pins = [9, 3, 11, 2]
sensor_boards = 'board'

sensor_names.length.times do |i|
  Sensor.create!(name: sensor_names[i], kind: sensor_kinds[i], description: sensor_details[i], pin: sensor_pins[i], board: sensor_boards)
  @sensor_id = Sensor.last.id
end

p "Created #{Sensor.count} make believe sensors"
