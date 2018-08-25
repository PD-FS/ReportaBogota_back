json.extract! report, :id, :Longitude, :Latitude, :user_id, :report_type_id, :created_at, :updated_at
json.url report_url(report, format: :json)
