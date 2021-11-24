class User < ApplicationRecord
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  :confirmable
  has_one_attached :avatar
  # t.string :confirmation_token
  # t.datetime :confirmed_at
  # t.datetime :confirmation_sent_at
  # t.string :unconfirmed_email # Only if using reconfirmable

  # ## Lockable
  # t.integer :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
  # t.string :unlock_token # Only if unlock strategy is :email or :both
  # t.datetime :locked_at
  # after_commit :add_default_avatar, on: %i[create update]

  # def avatar_thumbnail
  #   debugger
  #   if avatar.attached?
  #     debugger
  #     avatar.variant(resize: "150x150!").processed if avatar.attached?
  #   else
  #     "/user_default.jpg"
  #   end
  # end

  # private

  # def add_default_avatar
  #   unless avatar.attached?
  #     avatar.attach(
  #       io: File.open(
  #         Rails.root.join("app", "assets", "images", "user_default.jpg")
  #       ), filename: "user_default.jpg",
  #       content_type: "image/jpg",
  #     )
  #   end
  # end
end
