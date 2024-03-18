# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Users = User.create([{ name: 'Luke', ip: '127.0.0.1', password: '123456' }, { name: 'admin', ip: '127.0.0.1', password: 'admin' }])
details = {  "basic": {
    "phonetic": "gʊd",
    "uk-phonetic": "gʊd",
    "us-phonetic": "ɡʊd",
    "uk-speech": "XXXX",
    "us-speech": "XXXX",
    "explains": ["好处", "好的", "好"],
    "sentence_example": []
  }
}.to_json

words_data = <<~SQL
INSERT INTO `words` (`id`, `en`, `zh`, `details`) VALUES (1,"Pop","流行音乐",\'#{details}\'),
(2,"Music","音乐", \'#{details}\'),
(3,"Funk","放克", \'#{details}\'),
(4,"Jazz","爵士",\'#{details}\'),
(5,"Reggae","雷鬼",\'#{details}\'),
(6,"Rap","说唱",\'#{details}\'),
(7,"Blues","布鲁斯",\'#{details}\'),
(8,"Metal","金属乐",\'#{details}\'),
(9,"Folk","民谣",\'#{details}\'),
(10,"Country","乡村音乐",\'#{details}\'),
(11,"Jazz","爵士",\'#{details}\'),
(12,"Country","乡村音乐",\'#{details}\'),
(13,"World","世界",\'#{details}\'),
(14,"Latin","拉丁",\'#{details}\'),
(15,"Latin","拉丁",\'#{details}\'),
(16,"Soul","灵魂乐",\'#{details}\'),
(17,"Rap","说唱",\'#{details}\'),
(18,"Country","乡村音乐",\'#{details}\'),
(19,"Folk","民谣",\'#{details}\'),
(20,"Rock","摇滚",\'#{details}\'),
(21,"Stage And Screen","舞台音乐",\'#{details}\'),
(22,"Stage And Screen","舞台音乐",\'#{details}\'),
(23,"Country","乡村音乐",\'#{details}\'),
(24,"Stage And Screen","舞台音乐",\'#{details}\'),
(25,"Electronic","电子",\'#{details}\'),
(26,"Pop","流行音乐",\'#{details}\'),
(27,"Funk","放克",\'#{details}\'),
(28,"Non Music","无声",\'#{details}\'),
(29,"Country","乡村音乐",\'#{details}\'),
(30,"Blues","布鲁斯",\'#{details}\'),
(31,"Jazz","爵士",\'#{details}\'),
(32,"Reggae","雷鬼",\'#{details}\'),
(33,"Rap","说唱",\'#{details}\'),
(34,"World","世界",\'#{details}\'),
(35,"Non Music","无声",\'#{details}\'),
(36,"Jazz","爵士",\'#{details}\'),
(37,"Rock","Rap",\'#{details}\'),
(38,"Jazz","爵士",\'#{details}\'),
(39,"Electronic","电子",\'#{details}\'),
(40,"Blues","布鲁斯",\'#{details}\'),
(41,"Reggae","雷鬼",\'#{details}\'),
(42,"Hip Hop","嘻哈",\'#{details}\'),
(43,"Hip Hop","嘻哈",\'#{details}\'),
(44,"Reggae","雷鬼",\'#{details}\'),
(45,"Funk","放克",\'#{details}\'),
(46,"Hip Hop","嘻哈",\'#{details}\'),
(47,"Stage And Screen","舞台音乐",\'#{details}\'),
(48,"World","世界",\'#{details}\'),
(49,"World","世界",\'#{details}\'),
(50,"Soul","灵魂乐",\'#{details}\'),
(51,"World","世界",\'#{details}\'),
(52,"Blues","布鲁斯",\'#{details}\'),
(53,"Reggae","雷鬼",\'#{details}\'),
(54,"Metal","金属乐",\'#{details}\'),
(55,"Soul","灵魂乐",\'#{details}\'),
(56,"Funk","放克",\'#{details}\'),
(57,"Country","乡村音乐",\'#{details}\'),
(58,"Country","乡村音乐",\'#{details}\'),
(59,"Pop","流行音乐",\'#{details}\'),
(60,"Metal","金属乐",\'#{details}\'),
(61,"Folk","民谣",\'#{details}\'),
(62,"Classical","古典",\'#{details}\'),
(63,"Pop","流行音乐",\'#{details}\'),
(64,"Country","乡村音乐",\'#{details}\'),
(65,"Funk","放克",\'#{details}\'),
(66,"World","世界",\'#{details}\'),
(67,"Hip Hop","嘻哈",\'#{details}\'),
(68,"Soul","灵魂乐",\'#{details}\'),
(69,"World","世界",\'#{details}\');
SQL
Word.connection.execute(words_data)

books_data = <<~SQL
INSERT INTO `books` (`id`, `name`, `created_at`, `updated_at`) VALUES (1,"book_1","2024-03-17 23:02:00","2024-03-17 15:02:17"),
(2,"book_2","2024-03-17 23:02:00","2024-03-17 15:02:17"),
(3,"book_3","2024-03-17 23:02:00","2024-03-17 15:02:17"),
(4,"book_4","2024-03-17 23:02:00","2024-03-17 15:02:17"),
(5,"book_5","2024-03-17 23:02:00","2024-03-17 15:02:17");
SQL
Book.connection.execute(books_data)

books_words_data = <<~SQL
INSERT INTO `books_words` (`word_id`, `book_id`) VALUES (11,1),
(14,1),
(15,1),
(17,1),
(31,1),
(32,1),
(34,1),
(37,1),
(41,1),
(54,1),
(55,1),
(58,1),
(60,1),
(64,1),
(65,1),
(67,1),
(1,2),
(20,2),
(21,2),
(21,2),
(22,2),
(23,2),
(28,2),
(29,2),
(32,2),
(37,2),
(39,2),
(48,2),
(53,2),
(63,2),
(66,2),
(67,2);
SQL
Word.connection.execute(books_words_data)


Mark.create(user: Users[0], markable_type: Word, markable_id: 3, status: 0)
Mark.create(user: Users[1], markable_type: Word, markable_id: 1, status: 0)
