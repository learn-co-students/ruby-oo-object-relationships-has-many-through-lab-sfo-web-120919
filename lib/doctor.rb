class Doctor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def appointments
    all_appointments = Appointment.all
    my_appointments = all_appointments.select { |app| self == app.doctor }
    my_appointments
  end

  def patients
    appointments.map { |app| app.patient }
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
end
