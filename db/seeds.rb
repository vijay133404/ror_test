# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#seed file create for facility and role

["ror", "html", "css", "java", "c"].each do |name|
  Facility.find_or_create_by(name: name)  
end

["emp", "student", "manager"].each do |name|
  Role.find_or_create_by(name: name)  
end