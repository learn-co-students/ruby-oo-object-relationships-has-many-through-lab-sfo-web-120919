class Appointment
  attr_reader :date, :patient, :doctor

  @@all = []

  def initialize(date, patient, doctor)
    @patient = patient
    @doctor = doctor
    @date = date
    save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
end
