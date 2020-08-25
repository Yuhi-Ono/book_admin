# == Schema Information
#
# Table name: books
#
#  id           :integer          not null, primary key
#  name         :string
#  price        :integer
#  published_on :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  publisher_id :integer          not null
#
# Indexes
#
#  index_books_on_publisher_id  (publisher_id)
#
# Foreign Keys
#
#  publisher_id  (publisher_id => publishers.id)
#
class Book < ApplicationRecord
  COSTLY_PRICE = 3000
  scope :costly, lambda { where("price > ?", COSTLY_PRICE) }
  scope :written_about, lambda {|theme|
    where("name like ?", "%#{theme}%")
  }
end
