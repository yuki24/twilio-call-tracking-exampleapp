require "administrate/base_dashboard"

class CallStatusUpdateDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    incoming_call: Field::BelongsTo,
    id: Field::Number,
    api_version: Field::String,
    called: Field::String,
    parent_call_sid: Field::String,
    call_status: Field::String,
    from: Field::String,
    direction: Field::String,
    timestamp: Field::String,
    account_sid: Field::String,
    callback_source: Field::String,
    called_via: Field::String,
    caller: Field::String,
    sequence_number: Field::String,
    call_sid: Field::String,
    to: Field::String,
    forwarded_from: Field::String,
    to_state: Field::String,
    caller_country: Field::String,
    caller_state: Field::String,
    to_zip: Field::String,
    caller_zip: Field::String,
    to_country: Field::String,
    called_zip: Field::String,
    called_city: Field::String,
    call_duration: Field::String,
    called_country: Field::String,
    caller_city: Field::String,
    from_country: Field::String,
    to_city: Field::String,
    from_city: Field::String,
    called_state: Field::String,
    from_zip: Field::String,
    from_state: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :call_status,
    :called,
    :timestamp
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :incoming_call,
    :id,
    :api_version,
    :called,
    :parent_call_sid,
    :call_status,
    :from,
    :direction,
    :timestamp,
    :account_sid,
    :callback_source,
    :called_via,
    :caller,
    :sequence_number,
    :call_sid,
    :to,
    :forwarded_from,
    :to_state,
    :caller_country,
    :caller_state,
    :to_zip,
    :caller_zip,
    :to_country,
    :called_zip,
    :called_city,
    :call_duration,
    :called_country,
    :caller_city,
    :from_country,
    :to_city,
    :from_city,
    :called_state,
    :from_zip,
    :from_state,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :incoming_call,
    :api_version,
    :called,
    :parent_call_sid,
    :call_status,
    :from,
    :direction,
    :timestamp,
    :account_sid,
    :callback_source,
    :called_via,
    :caller,
    :sequence_number,
    :call_sid,
    :to,
    :forwarded_from,
    :to_state,
    :caller_country,
    :caller_state,
    :to_zip,
    :caller_zip,
    :to_country,
    :called_zip,
    :called_city,
    :call_duration,
    :called_country,
    :caller_city,
    :from_country,
    :to_city,
    :from_city,
    :called_state,
    :from_zip,
    :from_state,
  ].freeze

  # Overwrite this method to customize how call status updates are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(call_status_update)
  #   "CallStatusUpdate ##{call_status_update.id}"
  # end
end
