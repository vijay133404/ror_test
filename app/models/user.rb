class User < ApplicationRecord
	has_many :facility_users
	validates :first_name, :last_name,:dob, :role, :presence => true
	GENDER_TYPES ={
      0 => 'Male',
      1 => 'Female',
    }

    GENDER_VALUE ={
      'Male' => 0,
      'Female' => 1,
    }
end
