require 'pry'

class Appointment
  attr_accessor :patient, :doctor, :date
  attr_reader :name

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

end
