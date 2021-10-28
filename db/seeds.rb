# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

addresses = Address.create([{
                             street: '465 Chemin Moore',
                             city: 'Hemmingford',
                             state: 'Quebec',
                             country: 'Canada',
                             zip_code: 'J0L 1H0'
                           },
                            {
                              street: '50 Rue Saint-Jean',
                              city: 'Chateaguay',
                              state: 'Quebec',
                              country: 'Canada',
                              zip_code: 'J6J 2X7'
                            }])

users = User.create([{
                      email: 'Mathieu.lussier@hotmail.com',
                      password: 'admin',
                      address_id: addresses.first.id,
                      active: true
                    },
                     {
                       email: 'Mathieu.lussier1997@gmail.com',
                       password: 'admin',
                       address_id: addresses.last.id,
                       active: true
                     }])

campgrounds = Campground.create([{
                                  name: 'Mathieu Campground',
                                  description: 'This is Mathieu campground.',
                                  user_id: users.first.id,
                                  address_id: addresses.first.id,
                                  price: 10.25
                                },
                                 {
                                   name: 'Mathieu Gmail Campground',
                                   description: 'This is Mathieu gmail campground.',
                                   user_id: users.last.id,
                                   address_id: addresses.last.id,
                                   price: 18.75
                                 }])

comments = Comment.create([
                            {
                              text: 'This is a Mathieu campground comment.',
                              user_id: users.first.id,
                              campground_id: campgrounds.first.id
                            },
                            {
                              text: 'This is a Mathieu gmail campground comment.',
                              user_id: users.last.id,
                              campground_id: campgrounds.last.id
                            }
                          ])

child_comment = Comment.create({
                                 text: 'This is a child comment.',
                                 user_id: users.first.id,
                                 campground_id: campgrounds.first.id,
                                 parent_id: comments.first.id
                               })
