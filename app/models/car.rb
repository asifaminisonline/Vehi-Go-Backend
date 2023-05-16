class Car < ApplicationRecord
    has_one_attached :image

    validates :name, presence: true
    validates :price, presence: true
    validates :color, presence: true
    validates :description, presence: true

    has_many :reservations, dependent: :destroy
    has_many :users, through: :reservations, dependent: :destroy
      
  
end
