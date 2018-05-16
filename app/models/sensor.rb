class Sensor < ActiveRecord::Base
  has_many :lcds
  validates :name, :presence => true
end
