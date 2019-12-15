class Patient
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    all_appointments = Appointment.all
    my_appointments = all_appointments.select { |app| self == app.patient }
    my_appointments
  end

  def doctors
    appointments.map { |app| app.doctor }
  end

  def save
    self.class.all << self
  end
end
