class Patient
    attr_accessor :name, :appointments

    def initialize (name)
        @name = name 
        @appointments = []
    end

    def new_appointment (doctor, date)
        appointment = Appointment.new(date, doctor, self)
        self.appointments << appointment
        appointment
    end 

    def doctors 
        self.appointments.collect {|appointment| appointment.doctor}
    end 
end 