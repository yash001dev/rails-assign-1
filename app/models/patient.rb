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
class Patient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  has_many :appointments
  has_many :physicians, through: :appointments
end
