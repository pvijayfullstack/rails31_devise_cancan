# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cybercat_role = Role.create([{ name: 'admin' }, { name: 'sale' }])
cybercat_user = User.create([{ email: 'tho@cybercat.ca', password: 'duytho', password_confirmation: 'duytho' , cyber: 'true' }])

