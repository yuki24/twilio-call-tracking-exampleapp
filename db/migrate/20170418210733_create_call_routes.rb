class CreateCallRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :call_routes do |t|
      t.string :incoming_number
      t.string :forward_to_number
      t.string :twilio_sid

      t.timestamps
    end
  end
end
