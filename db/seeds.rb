Sensor.destroy_all
# Measure.destroy_all

sensor_names =  ["Blue LED", "Green LED", "Yellow LED"]
sensor_descriptions = ["A simple Blue LED", "A common Green LED", "A normal Yellow LED"]
sensor_kinds = "Digital"
sensor_pins = 99
sensor_boards = "board"

sensor_names.length.times do |i|
 Sensor.create!(name: sensor_names[i], kind: sensor_kinds, description: sensor_descriptions[i], pin: sensor_pins, board: sensor_boards)
 @sensor_id = Sensor.last.id
end

p "Created #{Sensor.count} make believe sensors"
