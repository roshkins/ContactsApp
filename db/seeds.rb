# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


joe = User.create!(:name => "Chuck Norris", :email => "chuck@norris.comicon")
bill = User.create!(:name => "Bruce Lee", :email => "joe@brucelee.comicon")

tonto = Contact.create!( :address => "The darkside of the moon",
                         :email => "you@dontwanna.know",
                         :phone_number => "555-555-5555",
                         :name => "Tonto",
                         :user_id => 1
                         )

