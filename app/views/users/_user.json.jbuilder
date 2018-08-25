json.extract! user, :id, :CellPhone, :Username, :Password, :email, :FirstName, :LastName, :Avatar, :Points, :created_at, :updated_at
json.url user_url(user, format: :json)
