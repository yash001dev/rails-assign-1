# == Schema Information
#
# Table name: physicians
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  unique_id  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class PhysicianTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
