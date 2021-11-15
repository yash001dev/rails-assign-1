# == Schema Information
#
# Table name: patients
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
