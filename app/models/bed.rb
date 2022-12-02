class Bed < ApplicationRecord
  belongs_to :room


  enum status: [ :reserved, :free, :check_in, :check_out, :paid, :occupied ]
end
