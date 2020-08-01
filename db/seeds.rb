# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 配列でまとめて作成
# users = User.create([
#   {
#     email: "test@gmail.com",
#     password: "test1234"
#   },
#   {
#     email: "test2@gmail.com",
#     password: "test1234"
#   }
# ])
3.times do |i|
  User.create(email: "test#{i+1}@gmail.com", password: "test1234")
  Post.create(user_id: User.find(i+1).id, title: "タイトル挿入#{i+1}")
end