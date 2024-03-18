json.data @words, partial: 'words/word', as: :word
json.meta do 
  json.paginate @words.paginate
end
