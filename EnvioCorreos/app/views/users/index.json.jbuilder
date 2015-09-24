json.array!(@users) do |user|
  json.extract! user, :id, :nombre, :password, :confird_password
  json.url user_url(user, format: :json)
end
