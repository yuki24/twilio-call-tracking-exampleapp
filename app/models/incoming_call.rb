class IncomingCall < ApplicationRecord
  belongs_to :call_route
  has_many :call_status_updates, dependent: :destroy
end
