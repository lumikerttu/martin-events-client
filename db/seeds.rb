# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Adding multiple categories
Category.create([{name: 'Sport'}, {name: 'Festival' }, {name: 'EV100' }, {name: 'Film' }, {name: 'Kogupere' }, {name: 'Kinkekaardid' }, {name: 'Varia' }, {name: 'Näitus' }, ])

#Adding one event
Event.create({
   name: "Disko",
   short_description: "Tantsupidu",
   long_description: "Back to 80s.",
   price: 1000,
   date: Date.today + 2.weeks + 3.days,
   location: "Tartu Ajaloomuuseum",
   category: Category.where(name: "EV100").first
})

#Adding one event
Event.create({
   name: "Suusatamine",
   short_description: "Spordiüritus",
   long_description: "Kogupere spordipäev Otepää hangede vahel.",
   price: 10,
   date: Date.today - 1.years,
   location: "Tehvandi",
   category: Category.where(name: "Sport").first
})

#Adding one event
Event.create({
   name: "Koodimurdjad",
   short_description: "Installatsioon",
   long_description: "Näitus 2 aastat koodiarendajana.",
   price: 500,
   date: Date.today + 315.days,
   location: "Aparaaditehas",
   category: Category.where(name: "Näitus").first
})

User.create({email: 'kerttu.kar@gmail.com', password: ‘123123’}).confirm