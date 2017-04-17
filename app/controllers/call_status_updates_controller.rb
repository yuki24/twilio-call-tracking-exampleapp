class CallStatusUpdatesController < ApplicationController

  def create
    @incoming_call = IncomingCall.find(params[:incoming_call_id])
    @incoming_call.call_status_updates.create!(call_status_update_params)
  end

  private

  def call_status_update_params
    params.transform_keys(&:underscore).permit(
      :account_sid,
      :api_version,
      :call_duration,
      :call_sid,
      :call_status,
      :callback_source,
      :called,
      :called_city,
      :called_country,
      :called_state,
      :called_via,
      :called_zip,
      :caller,
      :caller_city,
      :caller_country,
      :caller_state,
      :caller_zip,
      :direction,
      :forwarded_from,
      :from,
      :from_city,
      :from_country,
      :from_state,
      :from_zip,
      :incoming_call_id,
      :parent_call_sid,
      :sequence_number,
      :timestamp,
      :to,
      :to_city,
      :to_country,
      :to_state,
      :to_zip
    )
  end
end
