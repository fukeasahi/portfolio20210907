class Caretaker < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
        
  has_many :reviews, dependent: :destroy
  has_many :orders, dependent: :destroy

  def self.search(keyword)
    where(["email like? OR name like? OR body like? OR delete_flag like? OR body like? OR body like? OR body like?", "%#{keyword}%", "%#{keyword}%"])
  end

end
