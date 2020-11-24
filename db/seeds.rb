# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.all.destroy_all
Article.destroy_all

3.times do
    user = User.create!(
      email: Faker::Internet.email,
      password: "azerty"
    )
  end

20.times do
    
    article = Article.create!(
    title:Faker::Book.title[0..40],
    content:Faker::Lorem.paragraphs(number: 4).join,
    user_id:User.find(rand(User.first.id..User.last.id)).id
    )
end
puts "my seed"