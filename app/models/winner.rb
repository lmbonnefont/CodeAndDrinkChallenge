class Winner < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :surname, presence: true
  validates :photo, presence: true
  validates :date, presence: true
  validates :batch, presence: true
  validates :city, presence: true
end
