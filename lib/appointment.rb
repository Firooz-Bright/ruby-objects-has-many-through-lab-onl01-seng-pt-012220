class Appointment
  
  @@all=[]
  attr_accessor :date,:patient,:doctor
  
  def initialize(doctor="",patient="",date="")
    @date =date
    @patient=patient
    @doctor=doctor
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def patient 
    @patient
  end 
  
  def doctor
    @doctor
  end 
  
end 