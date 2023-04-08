class Bed < ApplicationRecord
  belongs_to :room
  validates :letter, presence: true
  enum status: [ :reserved, :free, :check_in, :check_out, :paid, :occupied ]
end
