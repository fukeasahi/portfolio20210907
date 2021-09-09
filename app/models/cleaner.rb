class Cleaner < ApplicationRecord
  def self.search(keyword)
    where(["prefecture like? OR city like? OR address_number like? OR building like?", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%"])
  end
end
