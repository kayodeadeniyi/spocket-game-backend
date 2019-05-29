json.authenticate do
  user = @command.user

  json.token @command.result
  json.user_id user.id
  json.first_name user.first_name
  json.last_name user.last_name
  json.email user.email
end
