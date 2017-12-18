# my_api/app/views/api/v1/users/index.json.jbuilder

json.array! @articles do |article|
  json.(article, :title, :body)
end