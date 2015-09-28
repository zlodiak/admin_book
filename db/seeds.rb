# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
Role.create!(id: 0, title: 'Гость')
Role.create!(id: 1, title: 'Пользователь')
Role.create!(id: 2, title: 'Менеджер')
Role.create!(id: 3, title: 'Администратор')

User.create!(:email => 'admin@ad.ad', :password => 'qwertyui', :password_confirmation => 'qwertyui', :role_id => 3)
User.create!(:email => 'manager@ad.ad', :password => 'qwertyui', :password_confirmation => 'qwertyui', :role_id => 2)
User.create!(:email => 'user@ad.ad', :password => 'qwertyui', :password_confirmation => 'qwertyui', :role_id => 1)