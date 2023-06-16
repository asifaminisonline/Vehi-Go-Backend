class Reservation < ApplicationRecord
  # validates :user_id, presence: true, uniqueness: true
  # validates :car_id, presence: true, uniqueness: true
  validates :picking_date, presence: true
  # validates :return_date, presence: true

  belongs_to :user, class_name: 'User'
  belongs_to :car, class_name: 'Car'
end
