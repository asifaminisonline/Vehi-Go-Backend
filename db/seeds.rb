# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


users = User.create!([
  {
    name: 'Obi-Wan Kenobi',
    email: 'obiwan@jedi.com',
    password: 'obiwan',
  },
  {
    name: 'Asoka Kai',
    email: 'asoka@jedi.com',
    password: 'obiwan',
  },
  {
    name: 'Abel G',
    email: 'abel@gmail.com',
    password: '123456',
  },
  {
    name: 'Aamir Khan',
    email: 'aamir@khan.com',
    password: '123456',
  },
  {
    name: 'Milen',
    email: 'milen@gmail.com',
    password: '123456',
  },
])


cars = Car.create!([
  {
    name: 'Range Rover',
    image: 'https://www.topgear.com/sites/default/files/2021/10/RR_22MY_10_Exterior_261021_EXT_054.jpg?w=1784&h=1004',
    price: 200,
    color: 'red',
    description: 'The Range Rover is a full-size luxury SUV produced by British car maker Land Rover, a marque of Jaguar Land Rover. The Range Rover is the flagship model of the marque, and has been in continuous production since 1970.'
  },

  {
    name: 'Rivian R1T',
    image: 'https://www.cnet.com/a/img/resize/03e9f19c83795820d5fac35dee68433c37f237cc/hub/2021/11/10/5861d875-293a-495c-9e95-72c9d5fbb999/rivian-r1t-slow-deliveries-promo-image.jpg?auto=webp&fit=crop&height=675&width=1200',
    color: 'blue',
    price: 200,
    description: 'The Rivian R1T is an all-electric pickup truck that is being developed by Rivian Automotive. The R1T is Rivian’s first vehicle, and is expected to be released in 2021.'
  },

  {
    name: 'BMW 3 Series',
    image: 'https://hips.hearstapps.com/hmg-prod/images/2021-bmw-3-series-mmp-1-1593549868.jpg',
    color: 'purple',
    price: 150,
    description: 'The BMW 3 Series is a compact executive car manufactured by the German automaker BMW since May 1975. It is the successor to the 02 Series and has been produced in six different generations.'
  },
  {
    name: 'Audi A4',
    image: 'https://images.livemint.com/img/2021/01/05/1600x900/Audi1_1609834939606_1609834946676.jpg',
    color: 'black',
    price: 100,
    description: 'The Audi A4 is a line of compact executive cars produced since 1994 by the German car manufacturer Audi, a subsidiary of the Volkswagen Group. The A4 has been built in five generations and is based on the Volkswagen Group B platform.'
  },
  {
    name: 'Tesla Model X',
    image: 'https://www.tesla.com/sites/default/files/modelsx-new/social/model-x-social.jpg',
    color: 'red',
    price: 200,
    description: 'The Tesla Model X is a mid-size all-electric luxury crossover SUV made by Tesla, Inc. It is the first vehicle in Tesla\'s lineup to be built on the company\'s third-generation platform, which is shared with the Model S and Model 3.'
  },
  {
    name: 'Ford F-Series',
    image: 'https://i.gaw.to/vehicles/photos/40/29/402947-2022-ford-f-150.jpg',
    color: 'blue',
    price: 100,
    description: 'The Ford F-Series is a series of light-duty trucks and medium-duty trucks (Class 2-7) that have been marketed and manufactured by Ford Motor Company since 1948. While most variants of the F-Series trucks are full-size pickup trucks, the F-Series also includes chassis cab trucks and commercial vehicles.'
  },
  {
    name: 'Ferrari 812',
    image: 'https://www.motortrend.com/uploads/sites/5/2021/05/2021-Ferrari-812-GTS-55.jpg',
    color: '2021',
    price: 1000,
    description: 'The Ferrari 812 Superfast is a front mid-engine, rear-wheel-drive grand tourer produced by Ferrari. It is the successor to the Ferrari F12berlinetta and was unveiled at the 2017 Geneva Motor Show.'
  }
])


