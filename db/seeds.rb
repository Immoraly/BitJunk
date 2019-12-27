# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.all.delete_all
AdminUser.all.delete_all
GarbageMan.all.delete_all
role = Role.create(name: 'Admin')
role1 = Role.create(name: 'User')
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', role: role) #if Rails.env.development?
GarbageMan.create(login: 'immoraly', email: 'berkos@mail.ru', password: 'password', role: role1)

