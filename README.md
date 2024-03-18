# tmp_public_repo

## xinji_review_api
### 题目
一个背单词的功能：

有若干个系统已有的单词本，单词本里的单词用户不能增删。
用户点击某个单词本，可以查看单词列表。
用户点击某个单词，可以查看单词详情，里面有音标、解释和例句。
单词详情页面有【未掌握】和【已掌握】两个按钮，点击后会相应改变单词的状态。
同样的单词可能出现在不同的单词本中。

### api
* 用户登陆
> curl -d '{"name":"admin", "password": "admin"}' -H "Content-Type: application/json" -X POST localhost:3000/login

* 查看单词本列表的功能（不是单词列表）。
> curl localhost:3000/books.json

* 查看单词列表和单词详情的功能。
> curl localhost:3000/books/1/words.json
> curl localhost:3000/words/1.json

* 把单词变成未掌握或已掌握的功能。
> curl -d '{"status": "1", "token": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE3MTEyOTUwOTcsInVzZXJfaWQiOjJ9.2A85p2wmhwSb7I25ii-7--go6OBzju2X1Dxg8WV9zIU"}' -H "Content-Type: application/json" -X POST localhost:3000/words/1/mark

