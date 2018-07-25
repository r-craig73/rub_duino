# frozen_string_literal: true

class Sensor < ActiveRecord::Base
  has_many :lcds
  has_many :rgblcds
  validates :name, presence: true
end
