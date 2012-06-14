# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Entry.create(url:"https://www.google.co.jp/")
Entry.create(url:"http://blog.kyanny.me/")
Entry.create(url:"http://sqale.jp/")
Entry.create(url:"http://lolipop.jp/")
Entry.create(url:"http://jugem.jp/")
Entry.create(url:"http://goope.jp/")
Entry.create(url:"http://calamel.jp/")
Entry.create(url:"http://ki-ha.jugem.jp/")
Entry.create(url:"http://b.hatena.ne.jp/")
Entry.create(url:"http://omocoro.jp/")
Entry.create(url:"http://sega.jp/")

Bookmark.create(user_id:1,entry_id:1,comment"セーガー")
Bookmark.create(user_id:2,entry_id:2,comment"セーガー")
Bookmark.create(user_id:3,entry_id:3,comment"セーガー")
Bookmark.create(user_id:1,entry_id:4,comment"セーガー")
Bookmark.create(user_id:2,entry_id:5,comment"セーガー")
Bookmark.create(user_id:3,entry_id:6,comment"セーガー")
Bookmark.create(user_id:1,entry_id:7,comment"セーガー")
Bookmark.create(user_id:2,entry_id:8,comment"セーガー")
Bookmark.create(user_id:3,entry_id:9,comment"セーガー")
Bookmark.create(user_id:1,entry_id:10,comment"セーガー")
Bookmark.create(user_id:2,entry_id:11,comment"セーガー")
Bookmark.create(user_id:3,entry_id:7,comment"セーガー")
Bookmark.create(user_id:1,entry_id:8,comment"セーガー")


User.create(name:"A",password:"hoge",password_confirmation:"hoge")
User.create(name:"B",password:"hoge",password_confirmation:"hoge")
User.create(name:"C",password:"hoge",password_confirmation:"hoge")
