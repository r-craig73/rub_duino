# frozen_string_literal: true

# Rgblcds relationship to sensors
class Rgblcd < ActiveRecord::Base
  belongs_to :sensor
end
