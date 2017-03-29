# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'Руслан Зекох', login: 'ruslan', role: 'admin', password: '66c4e6fa3361e746620634353e6f15e3')
User.create(name: 'Show Room', login: 'showroom', role: 'showroom', password: '66c4e6fa3361e746620634353e6f15e3')
User.create(name: 'Магазин Жак-Андрэ', login: 'shop', role: 'shop', password: '66c4e6fa3361e746620634353e6f15e3')