class Cleaner < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :orders, dependent: :destroy
  
  enum gender: { 男性: 0, 女性: 1, その他: 2 }
  
  def self.search(keyword)
    where(["prefecture like? OR city like? OR address_number like? OR building like?", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%"])
  end
  
end
