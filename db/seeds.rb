# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create! email: 'admin@admin.com.br', password: '12345678'

User.create! name:'user_teste' cpf: '123.456.789-10' email: 'user@teste.com.br', password: '12345678'