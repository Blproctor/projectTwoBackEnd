# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.create(email: 'your email', password: 'your password', )

User.create(email: 'max3@cool.com', password: '123', doctor: true)
User.create(email: 'max4@cool.com', password: '123', doctor: false)
MedicalPost.create(title: 'You are sick', content: 'You have Chicken Pox.', user_id: 1)
Comment.create(title: 'I do not feel sick', content: 'I do not believe you.', user_id: 2)
