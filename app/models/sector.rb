# == Schema Information
#
# Table name: sectors
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Sector < ApplicationRecord
  validates :name, presence: true
  has_and_belongs_to_many :patients
end
