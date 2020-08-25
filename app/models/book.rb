class Book < ApplicationRecord
  COSTLY_PRICE = 3000
  scope :costly, lambda { where("price > ?", COSTLY_PRICE) }
  scope :written_about, lambda {|theme|
    where("name like ?", "%#{theme}%")
  }
end
