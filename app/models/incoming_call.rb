class IncomingCall < ApplicationRecord
  has_many :call_status_updates
end
