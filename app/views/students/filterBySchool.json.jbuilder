json.array! @students do |student|
  json.(student, :id, :name, :last_name, :is_active, :age)
end