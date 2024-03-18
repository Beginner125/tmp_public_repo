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
INSERT INTO `words` (`id`, `en`, `zh`, `details`) VALUES (1,"Pop","Blues",\'#{details}\'),
(2,"Non Music","Latin", \'#{details}\'),
(3,"Funk","Electronic", \'#{details}\'),
(4,"Jazz","World",\'#{details}\'),
(5,"Reggae","Jazz",\'#{details}\'),
(6,"Rap","Electronic",\'#{details}\'),
(7,"Blues","Classical",\'#{details}\'),
(8,"Metal","Non Music",\'#{details}\'),
(9,"Folk","World",\'#{details}\'),
(10,"Country","Classical",\'#{details}\'),
(11,"Jazz","Classical",\'#{details}\'),
(12,"Country","Funk",\'#{details}\'),
(13,"World","World",\'#{details}\'),
(14,"Latin","Reggae",\'#{details}\'),
(15,"Latin","Soul",\'#{details}\'),
(16,"Soul","Rap",\'#{details}\'),
(17,"Rap","Reggae",\'#{details}\'),
(18,"Country","Stage And Screen",\'#{details}\'),
(19,"Folk","Stage And Screen",\'#{details}\'),
(20,"Rock","Folk",\'#{details}\'),
(21,"Stage And Screen","Non Music",\'#{details}\'),
(22,"Stage And Screen","Latin",\'#{details}\'),
(23,"Country","Funk",\'#{details}\'),
(24,"Stage And Screen","Folk",\'#{details}\'),
(25,"Electronic","Rock",\'#{details}\'),
(26,"Pop","Rock",\'#{details}\'),
(27,"Funk","World",\'#{details}\'),
(28,"Non Music","Hip Hop",\'#{details}\'),
(29,"Country","Metal",\'#{details}\'),
(30,"Blues","Electronic",\'#{details}\'),
(31,"Jazz","Folk",\'#{details}\'),
(32,"Reggae","Pop",\'#{details}\'),
(33,"Rap","Latin",\'#{details}\'),
(34,"World","Funk",\'#{details}\'),
(35,"Non Music","Rap",\'#{details}\'),
(36,"Jazz","Country",\'#{details}\'),
(37,"Rock","Rap",\'#{details}\'),
(38,"Jazz","Folk",\'#{details}\'),
(39,"Electronic","Rock",\'#{details}\'),
(40,"Blues","Folk",\'#{details}\'),
(41,"Reggae","Stage And Screen",\'#{details}\'),
(42,"Hip Hop","Hip Hop",\'#{details}\'),
(43,"Hip Hop","Classical",\'#{details}\'),
(44,"Reggae","Pop",\'#{details}\'),
(45,"Funk","Stage And Screen",\'#{details}\'),
(46,"Hip Hop","Metal",\'#{details}\'),
(47,"Stage And Screen","Classical",\'#{details}\'),
(48,"World","Non Music",\'#{details}\'),
(49,"World","Non Music",\'#{details}\'),
(50,"Soul","Pop",\'#{details}\'),
(51,"World","Rock",\'#{details}\'),
(52,"Blues","Funk",\'#{details}\'),
(53,"Reggae","Country",\'#{details}\'),
(54,"Metal","Country",\'#{details}\'),
(55,"Soul","Latin",\'#{details}\'),
(56,"Funk","Folk",\'#{details}\'),
(57,"Country","World",\'#{details}\'),
(58,"Country","Country",\'#{details}\'),
(59,"Pop","Folk",\'#{details}\'),
(60,"Metal","Funk",\'#{details}\'),
(61,"Folk","Reggae",\'#{details}\'),
(62,"Classical","Electronic",\'#{details}\'),
(63,"Pop","Classical",\'#{details}\'),
(64,"Country","Latin",\'#{details}\'),
(65,"Funk","World",\'#{details}\'),
(66,"World","Rock",\'#{details}\'),
(67,"Hip Hop","Non Music",\'#{details}\'),
(68,"Soul","Blues",\'#{details}\'),
(69,"World","Rap",\'#{details}\');
SQL
Word.connection.execute(words_data)

books_data = <<~SQL
INSERT INTO `books` (`id`, `name`, `created_at`, `updated_at`) VALUES (1,"Brooklyn","2024-03-17 23:02:00","2024-03-17 15:02:17"),
(2,"Jamie","2024-03-17 23:02:00","2024-03-17 15:02:17"),
(3,"Hayden","2024-03-17 23:02:00","2024-03-17 15:02:17"),
(4,"Reese","2024-03-17 23:02:00","2024-03-17 15:02:17"),
(5,"Alex","2024-03-17 23:02:00","2024-03-17 15:02:17");
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
