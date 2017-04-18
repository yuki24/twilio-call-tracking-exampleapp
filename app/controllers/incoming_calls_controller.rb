class IncomingCallsController < ApplicationController
  layout :false

  def create
    @call_route    = CallRoute.find(params[:call_route_id])
    @incoming_call = @call_route.incoming_calls.new(incoming_call_params)

    if @incoming_call.save
      # do nothing for now...
    else
      # what should we do in case of error...?
    end
  end

  private

  def incoming_call_params
    params.transform_keys(&:underscore).permit(
      :account_sid,
      :api_version,
      :call_sid,
      :call_status,
      :called,
      :called_city,
      :called_country,
      :called_state,
      :called_zip,
      :caller,
      :caller_city,
      :caller_country,
      :caller_state,
      :caller_zip,
      :direction,
      :from,
      :from_city,
      :from_country,
      :from_state,
      :from_zip,
      :to,
      :to_city,
      :to_country,
      :to_state,
      :to_zip
    )
  end
end
