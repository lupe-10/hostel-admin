class Reservation < ApplicationRecord
  belongs_to :passenger
  belongs_to :room
end

