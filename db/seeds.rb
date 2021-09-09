# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Caretaker.create!(
   email: 'a@gmail.com',
   name: 'テスト太郎',
   delete_flag: 0,
   post_code: "5550004",
   phone_number:"09099999999",
   prefecture: "東京都",
   city:"aa",
   address_number: "ddd",
   building: "ふわふわ",
   password: "aaaaaaaa",
   encrypted_password: "aaaaaaaa"
)
