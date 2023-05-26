class Reservation < ApplicationRecord
  validates :picking_date, presence: true
 

  belongs_to :user, class_name: 'User'
  belongs_to :car, class_name: 'Car'
end
