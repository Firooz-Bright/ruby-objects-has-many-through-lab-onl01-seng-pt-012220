class Doctor
  
  attr_accessor :name
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  def appointements
    Appointment.all.select{ |appointment|  appointment.doctor==self}
  end 
  
  def new_appointment (patient,date)
    Appointment.new(self,patient,date)
  end
  
  def patients
   appointements.map {|appointment| appointment.patient}
  end 
  
end