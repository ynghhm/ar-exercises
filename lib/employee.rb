class Employee < ActiveRecord::Base

  belongs_to :store

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_inclusion_of :hourly_rate, in: 40..200


  # * Employees must always have a store that they belong to (can't have an employee that is not assigned a store)



end
