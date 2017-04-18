require "administrate/base_dashboard"

class CallRouteDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    incoming_calls: Field::HasMany,
    id: Field::Number,
    incoming_number: Field::String,
    forward_to_number: Field::String,
    twilio_sid: Field::String,
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
    :incoming_number,
    :forward_to_number,
    :incoming_calls,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :incoming_number,
    :forward_to_number,
    :twilio_sid,
    :created_at,
    :updated_at,
    :incoming_calls,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :forward_to_number,
  ].freeze

  # Overwrite this method to customize how call routes are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(call_route)
  #   "CallRoute ##{call_route.id}"
  # end
end
