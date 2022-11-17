class Room < ApplicationRecord
    validates :number, presence: true
    validates :status, presence: true

    enum status: [ :reserved, :free, :check_in, :check_out, :paid, :occupied ]
end
