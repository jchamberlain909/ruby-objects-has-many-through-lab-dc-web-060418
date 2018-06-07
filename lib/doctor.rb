class Doctor
    @@all = []
    attr_accessor :name 

    def initialize (name)
        @name = name 
        self.class.all << self 
    end

    def new_appointment ( patient, date)
        appointment = Appointment.new(date, self, patient)
    end 

    def appointments 
        Appointment.all.keep_if{|appointment| appointment.doctor ==self}
    end 

    def patients
        appointments.collect do |appointment|
            appointment.patient
        end 
    end 
    
    def self.all
        @@all
    end
end 