# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "factory_girl"
include FactoryGirl::Syntax::Methods

create(:saving, name: "coffee", price: 2.99)
create(:saving, name: "tacos", price: 1.99)
create(:saving, name: "smoking", price: 5.99)
create(:saving, name: "1000 tv channels", price: 120.99)
