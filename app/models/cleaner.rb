class Cleaner < ApplicationRecord
  def self.search(keyword)
    where(["prefecture like? OR city like? OR address_number like? OR building like?", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%"])
  end
  enum gender: { 男性: 0, 女性: 1, その他: 2 }
end
