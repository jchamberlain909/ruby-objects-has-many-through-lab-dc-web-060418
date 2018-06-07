class Appointment
    attr_accessor :date, :doctor, :patient
    @@all = []
    def initialize (date, doctor, patient)
        @patient = patient
        @doctor = doctor
        @date = date
        self.class.all << self
    end

    def self.all
        @@all
    end
end 
