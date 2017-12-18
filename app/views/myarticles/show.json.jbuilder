
json.article do
  json.id @article.id
  json.title @article.title
  json.body @article.body
  json.user do
	json.id @article.user.id
	json.email @article.user.email
  end  
end

