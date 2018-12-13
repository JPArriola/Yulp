# == Schema Information
#
# Table name: businesses
#
#  id                    :bigint(8)        not null, primary key
#  biz_name              :string           not null
#  price                 :integer          not null
#  address_1             :string           not null
#  address_2             :string
#  city                  :string           not null
#  state                 :string           not null
#  zipcode               :string           not null
#  lat                   :float            not null
#  lng                   :float            not null
#  rating                :integer          not null
#  hours                 :text             not null
#  business_info         :text             not null
#  phone_number          :string
#  website               :string
#  takes_reservations    :boolean          default(FALSE), not null
#  take_out              :boolean          default(FALSE), not null
#  delivery              :boolean          default(FALSE), not null
#  credit_card           :boolean          default(FALSE), not null
#  bike_parking          :boolean          default(FALSE), not null
#  free_wifi             :boolean          default(FALSE), not null
#  pets_allowed          :boolean          default(FALSE), not null
#  wheelchair_accessible :boolean          default(FALSE), not null
#  good_for_kids         :boolean          default(FALSE), not null
#  good_for_groups       :boolean          default(FALSE), not null
#  outdoor_seating       :boolean          default(FALSE), not null
#  caters                :boolean          default(FALSE), not null
#  owner_id              :integer          not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'test_helper'

class BusinessTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
