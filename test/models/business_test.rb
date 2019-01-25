# == Schema Information
#
# Table name: businesses
#
#  id                    :bigint(8)        not null, primary key
#  biz_name              :string           not null
#  address_1             :string           not null
#  address_2             :string
#  city                  :string           not null
#  state                 :string           not null
#  zipcode               :string           not null
#  lat                   :float            not null
#  lng                   :float            not null
#  rating                :integer          not null
#  business_info         :text             not null
#  phone_number          :string
#  website               :string
#  owner_id              :integer          not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  hours                 :string           is an Array
#  takes_reservations    :string
#  take_out              :string
#  delivery              :string
#  credit_card           :string
#  bike_parking          :string
#  free_wifi             :string
#  pets_allowed          :string
#  wheelchair_accessible :string
#  good_for_kids         :string
#  good_for_groups       :string
#  outdoor_seating       :string
#  caters                :string
#  price                 :string
#  category              :string
#

require 'test_helper'

class BusinessTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
