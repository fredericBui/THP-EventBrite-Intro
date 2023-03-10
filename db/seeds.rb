# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'date'


def generateUser(n)
    n.times do 
        firstName = Faker::Name.first_name
        lastName = Faker::Name.last_name
        User.create(
            email: "#{firstName}.#{lastName}@yopmail.com",
            password: "Eracle42", 
            description: Faker::Lorem.sentence, 
            first_name: firstName, 
            last_name: lastName
        )
    end
end
generateUser(5)

def generateEvent(n)
    n.times do 
        Event.create(
            start_date: DateTime.new(2001,rand(1...12),rand(1...28),4,5,6),
            #=> #<DateTime: 2001-02-03T04:05:06+00:00 ...>
            duration: rand(1...90),
            title: Faker::Lorem.word,
            description: Faker::Lorem.paragraph,
            price: rand(1...1000),
            location: Faker::Address.city,
            user: User.find(1)
        )
    end
end
generateEvent(5)

Attendance.create(
    stripe_customer_id: "1876928D7",
    user: User.find(1),
    event: Event.find(1)
)