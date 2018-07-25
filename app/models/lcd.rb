# frozen_string_literal: true

# Lcds relationship to sensors
class Lcd < ActiveRecord::Base
  belongs_to :sensor
end
