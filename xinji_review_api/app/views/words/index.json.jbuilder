json.data @words, :id, :en, :zh
json.meta do 
  json.paginate @words.paginate
end
