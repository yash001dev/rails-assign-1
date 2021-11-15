# == Schema Information
#
# Table name: appointments
#
#  id              :integer          not null, primary key
#  patient_id      :integer          not null
#  physician_id    :integer          not null
#  appoinment_date :date             not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Appointment < ApplicationRecord
  validates :appoinment_date, presence: true
  belongs_to :patient
  belongs_to :physician
end
