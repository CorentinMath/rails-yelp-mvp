# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '+44 000 00 00 00',
    category:     'chinese',
    # rating:        5
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '+44 000 00 00 01',
    category:     'italian',
    # rating:        4
  },
  {
    name:         'Boulangerie orange',
    address:      '18 rue Oberkampf, 75010 Paris',
    phone_number: '+33 100 00 00 01',
    category:     'french',
    # rating:        2
  },
  {
    name:         'chez Guy Savoy',
    address:      'Quai de la Monnaie, 75010 Paris',
    phone_number: '+33 100 00 00 11',
    category:     'french',
    # rating:        5
  },
  {
    name:         'Baraque à frites',
    address:      'rue de la Roquette, 75010 Paris',
    phone_number: '+33 100 00 22 11',
    category:     'belgian',
    # rating:        1
  },
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
