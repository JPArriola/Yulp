# == Schema Information
#
# Table name: reviews
#
#  id         :bigint(8)        not null, primary key
#  body       :text             not null
#  rating     :integer          not null
#  biz_id     :integer          not null
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ApplicationRecord
  validates :body, :rating, presence: true
  validates :rating, inclusion: { in: (1..5) }
  validates :biz_id, uniqueness: { scope: :author_id, message: "you done messed up" }

  belongs_to :business,
  foreign_key: :biz_id,
  class_name: :Business

  belongs_to :author,
  foreign_key: :author_id,
  class_name: :User
end
