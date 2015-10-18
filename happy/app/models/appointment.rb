class Appointment < ActiveRecord::Base
  belongs_to :pet
  belongs_to :doctor
  validate :expiration_date_cannot_be_in_the_past
  validates :customer , :reason ,:reminder, presence: true


  def expiration_date_cannot_be_in_the_past
  	require 'date'
    errors.add(:date_of_visit, "can't be in the past") if
      !date_of_visit.blank? and date_of_visit < Date.today
  end
end
