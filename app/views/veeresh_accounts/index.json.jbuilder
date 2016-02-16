json.array!(@veeresh_accounts) do |veeresh_account|
  json.extract! veeresh_account, :id, :no_of_tickets_online, :no_of_tickets_box, :total_amt_per_day, :booking_id, :cinema_id, :user_id
  json.url veeresh_account_url(veeresh_account, format: :json)
end
