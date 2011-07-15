# encoding: utf-8
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#cybercat_role = Role.create([{ name: 'admin' }, { name: 'sale' }])
#cybercat_user = User.create([{ email: 'tho@cybercat.ca', password: 'duytho', password_confirmation: 'duytho' , cyber: 'true' }])
#require 'csv'
#CSV.foreach("clients.csv") do |row|
# ic = ImportClient.new
# ic.company_id = row[0]
# ic.client_no = row[1]
# ic.active = row[2] == 1 ? true : false
# ic.sort_key = row[3]
# ic.name = row[4]
# ic.address = row[5]
# ic.city = row[6]
# ic.postal_code = row[7]
# ic.phone = row[8]
# ic.new = row[9] == 1 ? true : false
# ic.save
#end
result_types = ResultType.create([{ name: 'En cours'}, { name: 'Succès'}, { name: 'Incomplète'}, { name: 'Échec'}])
activity_types = ActivityType.create([{ name: 'Appel téléphonique'}, { name: 'Support Technique'}, { name: 'Télémarketing'}])
