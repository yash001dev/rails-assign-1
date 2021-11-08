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
class Physician < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  has_many :appointments
  has_many :patients, through: :appointments
  after_save :generate_unique_id

  private

  def generate_unique_id
    self.update_column(:unique_id, SecureRandom.uuid)
  end
end
