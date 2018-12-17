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
#

class Business < ApplicationRecord
  validates :biz_name, :price, :city, :state, :zipcode, :lat, presence: true
  validates :lng, :rating, :hours, :business_info, :owner_id, presence: true

  validates :address_1, presence: true, uniqueness: true
  
  belongs_to :owner,
  foreign_key: :owner_id,
  class_name: :User

  has_many_attached :photos
end
