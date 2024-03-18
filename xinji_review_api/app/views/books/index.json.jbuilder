json.data @books, :id, :name, :created_at, :updated_at
json.meta do 
  json.paginate @books.paginate
end