class Caretaker < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  puts "aaaaadfsfdadafdasmodel"
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
end
