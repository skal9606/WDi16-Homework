# == Schema Information
#
# Table name: bookings
#
#  id         :integer          not null, primary key
#  name       :text
#  start_date :date
#  end_date   :date
#  guests     :integer
#  house_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Booking < ActiveRecord::Base
  belongs_to :house
  belongs_to :user
end
