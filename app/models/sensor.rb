# frozen_string_literal: true

class Sensor < ActiveRecord::Base
  has_many :lcds
  validates :name, presence: true
end
