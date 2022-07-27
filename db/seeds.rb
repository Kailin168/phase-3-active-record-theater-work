puts "seeding now"

r1 = Role.create!(character_name: "SuperHero")
r2 = Role.create!(character_name: "Minion")
r3 = Role.create!(character_name: "Pirate")


Audition.create!(actor: "Sam", location: "11 Broadway", phone: 9430943294, hired: false, role_id: r1.id)
Audition.create!(actor: "Yam", location: "12 Broadway", phone: 8978987898, hired: false, role: r1)
Audition.create!(actor: "Fam", location: "13 Broadway", phone: 2324334344, hired: false, role: r3)
Audition.create!(actor: "Tam", location: "14 Broadway", phone: 1134723947, hired: false, role: r2)




puts "done seeding now"