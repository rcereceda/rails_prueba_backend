# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Work.destroy_all
User.destroy_all

User.create([{ name: 'pedro'}, { name: 'juan'}])

user01 = User.where(name:'pedro').take
user02 = User.where(name:'juan').take

user01.works.build(description: 'trabajos realizados 01').save
user01.works.build(description: 'trabajos realizados 02').save
user02.works.build(description: 'trabajos realizados 03').save