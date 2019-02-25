# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.create([{ name: 'First Author' }, { name: 'Second Author' }, { name: 'Third Author' }])
Book.create([{ title: '1st book', published_at: 1.day.ago, author: Author.first }, 
             { title: '2nd book', published_at: 2.days.ago, author: Author.second },
             { title: '3rd book', published_at: 3.days.ago, author: Author.third },
             { title: '4th book', published_at: 3.days.ago, author: Author.third }
            ])
