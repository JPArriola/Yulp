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

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
