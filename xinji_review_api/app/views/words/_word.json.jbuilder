mark = word.marks.find_by(user: @current_user)

json.extract! word, :id, :en, :zh
json.mark_status mark.decorate.status if mark