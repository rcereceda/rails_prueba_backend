# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Work.destroy_all
User.destroy_all

Inventory.destroy_all
Category.destroy_all

# Items and Categories

Category.create([{ name: 'Neumáticos'}, { name: 'LLantas'}])

category01 = Category.where(name:'Neumáticos').take
category02 = Category.where(name:'LLantas').take

category01.inventories.build(description: 'neumático goodyear', serial: 123456, wheelsize:15).save
category01.inventories.build(description: 'neumático pirelli', serial: 456789, wheelsize:15).save
category02.inventories.build(description: "llanta 17''", serial: 789012, wheelsize:17).save

item01 = Inventory.where(description:'neumático goodyear').take
item02 = Inventory.where(description:'neumático pirelli').take
item03 = Inventory.where(description:"llanta 17''").take

# Works and Users

User.create([{ name: 'pedro'}, { name: 'juan'}])

user01 = User.where(name:'pedro').take
user02 = User.where(name:'juan').take

user01.works.build(description: 'trabajos realizados 01', inventory_id: item01.id).save
user01.works.build(description: 'trabajos realizados 02', inventory_id: item02.id).save
user02.works.build(description: 'trabajos realizados 03', inventory_id: item03.id).save