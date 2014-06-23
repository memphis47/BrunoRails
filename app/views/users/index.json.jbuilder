json.array!(@users) do |user|
  json.extract! user, :id, :username, :pswd, :auth
  json.url user_url(user, format: :json)
end
