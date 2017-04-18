class CallRoute < ApplicationRecord
  has_many :incoming_calls, dependent: :destroy

  include Rails.application.routes.url_helpers

  before_create do
    @number = TWILIO_CLIENT.available_phone_numbers.get('US').local.list.first
    @number = TWILIO_CLIENT.incoming_phone_numbers.create(phone_number: @number.phone_number)

    self.incoming_number = @number.phone_number
    self.twilio_sid = @number.sid
  end

  after_create do
    @number.update(voice_url: call_route_incoming_calls_url(self, host: ENV['APP_HOST']))
  end

  before_destroy do
    TWILIO_CLIENT.account.incoming_phone_numbers.get(twilio_sid).delete
  end
end
