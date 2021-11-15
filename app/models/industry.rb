# == Schema Information
#
# Table name: industries
#
#  id                  :integer          not null, primary key
#  name                :string
#  email               :string
#  registration_number :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class Industry < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  has_and_belongs_to_many :sectors
  after_create :generate_register_number

  private

  def generate_register_number
    self.update_column(:registration_number, SecureRandom.uuid)
  end
end
