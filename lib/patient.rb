class Patient
  @@all=[]
  attr_accessor :name
  
  def initialize(name)
    @name=name
    @@all << self 
  end 
  
  def new_appointment(doctor,date)
     Apointment.new(date,self,doctor)
  end 
  
  def self.all 
    @@all
  end 
  
  def appointments 
   Apointment.all.select{|appointment| appointment.patient==self}
  end 
  
  
  def doctors
   appointments.map{|appointment| appointment.doctor}
  end
  
    
end 