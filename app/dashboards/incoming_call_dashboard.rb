require "administrate/base_dashboard"

class IncomingCallDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    call_status_updates: Field::HasMany,
    id: Field::Number,
    caller: Field::String,
    caller_city: Field::String,
    caller_state: Field::String,
    caller_zip: Field::String,
    caller_country: Field::String,
    to: Field::String,
    to_city: Field::String,
    to_state: Field::String,
    to_zip: Field::String,
    to_country: Field::String,
    called_city: Field::String,
    called_state: Field::String,
    called_zip: Field::String,
    called_country: Field::String,
    from: Field::String,
    from_city: Field::String,
    from_state: Field::String,
    from_zip: Field::String,
    from_country: Field::String,
    call_status: Field::String,
    called: Field::String,
    call_sid: Field::String,
    account_sid: Field::String,
    to_sip: Field::String,
    direction: Field::String,
    api_version: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :from,
    :to
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :caller,
    :caller_city,
    :caller_state,
    :caller_zip,
    :caller_country,
    :to,
    :to_city,
    :to_state,
    :to_zip,
    :to_country,
    :called_city,
    :called_state,
    :called_zip,
    :called_country,
    :from,
    :from_city,
    :from_state,
    :from_zip,
    :from_country,
    :call_status,
    :called,
    :call_sid,
    :account_sid,
    :to_sip,
    :direction,
    :api_version,
    :created_at,
    :updated_at,
    :call_status_updates,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :call_status_updates,
    :caller,
    :caller_city,
    :caller_state,
    :caller_zip,
    :caller_country,
    :to,
    :to_city,
    :to_state,
    :to_zip,
    :to_country,
    :called_city,
    :called_state,
    :called_zip,
    :called_country,
    :from,
    :from_city,
    :from_state,
    :from_zip,
    :from_country,
    :call_status,
    :called,
    :call_sid,
    :account_sid,
    :to_sip,
    :direction,
    :api_version,
  ].freeze

  # Overwrite this method to customize how incoming calls are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(incoming_call)
  #   "IncomingCall ##{incoming_call.id}"
  # end
end
