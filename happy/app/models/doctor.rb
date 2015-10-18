class Doctor < ActiveRecord::Base
	has_many :appointments
	has_many :pets , :through => :apoointments


	validates :name ,length:{in: 1..35}
	validates :zip ,length: {is: 5}
	validates_inclusion_of :years_in_practice, :in => 1..100 
   
end
