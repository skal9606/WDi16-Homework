# == Schema Information
#
# Table name: houses
#
#  id           :integer          not null, primary key
#  name         :text
#  address      :text
#  blurb        :text
#  about        :text
#  availability :boolean
#  owner        :text
#  price        :integer
#  amenities    :text
#  house_rules  :text
#  image1       :text
#  image2       :text
#  image3       :text
#  image4       :text
#  image5       :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class House < ActiveRecord::Base
  has_many :bookings
  has_many :comments
end