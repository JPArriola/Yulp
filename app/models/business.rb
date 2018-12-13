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

class Business < ApplicationRecord
  validates :biz_name, :price, :city, :state, :zipcode, :lat, presence: true
  validates :lng, :rating, :hours, :business_info, :owner_id, presence: true
  validates :takes_reservations, :take_out, :delivery, :credit_card, presence: true
  validates :bike_parking, :free_wifi, :pets_allowed, :wheelchair_accessible, presence: true
  validates :good_for_kids, :good_for_groups, :outdoor_seating, :caters, presence: true

  validates :address_1, presence: true, uniqueness: true
  
  belongs_to :owner,
  foreign_key: :owner_id,
  class_name: :User
end
