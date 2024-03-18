json.extract! word, :id, :en, :zh
json.mark_status word.marks.first.decorate.status if word.marks.any?