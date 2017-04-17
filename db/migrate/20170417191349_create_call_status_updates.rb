class CreateCallStatusUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :call_status_updates do |t|
      t.belongs_to :incoming_call, foreign_key: true
      t.string :account_sid
      t.string :api_version
      t.string :call_duration
      t.string :call_sid
      t.string :call_status
      t.string :callback_source
      t.string :called
      t.string :called_city
      t.string :called_country
      t.string :called_state
      t.string :called_via
      t.string :called_zip
      t.string :caller
      t.string :caller_city
      t.string :caller_country
      t.string :caller_state
      t.string :caller_zip
      t.string :direction
      t.string :forwarded_from
      t.string :from
      t.string :from_city
      t.string :from_country
      t.string :from_state
      t.string :from_zip
      t.string :incoming_call_id
      t.string :parent_call_sid
      t.string :sequence_number
      t.string :timestamp
      t.string :to
      t.string :to_city
      t.string :to_country
      t.string :to_state
      t.string :to_zip

      t.timestamps
    end
  end
end
