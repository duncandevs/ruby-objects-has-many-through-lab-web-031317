# Patient
#   #new
#     initializes with a name (FAILED - 9)
#   # #add_appointment
#   #   takes in an argument of an apppointment and adds that appointment to it's list of appointments and tells that appointment it belongs to the patient (FAILED - 10)
#   # #doctors
#   #   has many doctors through appointments (FAILED - 11)


class Patient
  attr_accessor :name , :appointments
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointments << appointment
    appointment.patient = self
  end

  def doctors
    appointments.collect do |appointment|
      appointment.doctor
    end
  end
end
