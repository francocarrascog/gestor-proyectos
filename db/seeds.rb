# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
    Project.create( name: "project-#{i+1}", 
                    description: "descripción del proyecto #{i+1}",
                    start_on: Date.today - (i).days, 
                    finish_on: Date.today + (i).days,
                    state: Project.states.keys.sample
                    )
end