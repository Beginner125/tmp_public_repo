class CreateJoinTableWordsBooks < ActiveRecord::Migration[5.2]
  def change
    create_join_table :words, :books do |t|
      t.index [:book_id, :word_id]
    end
  end
end
