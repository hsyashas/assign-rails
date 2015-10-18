class Pet < ActiveRecord::Base
	has_many :appointments
	has_one :doctor , :through => :apoointment
	validates :name ,:breed, length:{in: 1..35}
    validates :animal , inclusion: { in: %w(dog cat bird)}
    validates :age , :weight ,:date_last ,{presence: true}
end
