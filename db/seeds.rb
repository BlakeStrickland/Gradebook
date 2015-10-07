# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Parent.create(name: "Rick", email: "Drinking@llday.com", password: "bushmillerbud")
Parent.create(name: "Martha", email: "tvland@nan.com", password: "idreamofgenie")
Parent.create(name: "Robert", email: "john@deer.com", password: "tractors")
Parent.create(name: "Zoey", email: "confused@life.com", password: "password")

Student.create(name: "Amber", email: "ohmygod@shoes.com", password: "soliketots", parent_id: 1)
Student.create(name: "Travis", email: "adidas@hair.com", password: "soccersoccer", parent_id: 2)
Student.create(name: "Alex", email: "triforce@link.com", password: "SongOfStorms", parent_id: 3)
Student.create(name: "Racheal", email: "checkmate@chess.com", password: "pawntod4", parent_id: 4)

Teacher.create(name: "Mr. Murray", email: "TheNextBillNye@science.com", password: "ScienceRules", student_id: 1)
Teacher.create(name: "Mrs. DeBois", email: "DStudies@SS.com", password: "02291899", student_id: 2)
Teacher.create(name: "Mrs. Tibbets", email: "Mrs+Tibbets@AFM.com", password: "2468101214", student_id: 3)
Teacher.create(name: "Mr. Crowley", email: "Wait@WelcometoHell.com", password: "666666666", student_id: 4)
