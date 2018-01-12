json.array! @schools do |school|
  json.(school, :id, :name, :address, :phone, :creation, :is_active, :students_count)
end