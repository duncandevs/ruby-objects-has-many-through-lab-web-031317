# Appointment
#   #new
#     initializes with a date and a doctor (FAILED - 6)
#   #patient
#     belongs to a patient (FAILED - 7) ->
#   #doctor
#     belongs to a doctor (FAILED - 8)

class Appointment
  attr_accessor :date, :doctor, :patient, :doctor
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end
end
