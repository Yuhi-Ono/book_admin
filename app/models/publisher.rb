# == Schema Information
#
# Table name: publishers
#
#  id         :integer          not null, primary key
#  address    :text
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Publisher < ApplicationRecord
end
