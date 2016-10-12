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
#  latitude     :float
#  longitude    :float
#

class House < ActiveRecord::Base
  has_many :bookings
  has_many :comments

  #geocoder
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  #search functionality
  def self.search(search)
    where("city LIKE ?", "%#{search}%")
  end
end
