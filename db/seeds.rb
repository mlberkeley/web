# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.create(name: "ProjectName", tag: "research", industry: "aa", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,")
Project.create(name: "ProjectName", tag: "industry", industry: "bb", description: "but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,")
Project.create(name: "ProjectName", tag: "research", industry: "cc", description: "and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
Project.create(name: "ProjectName", tag: "industry", industry: "aa", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,")
Project.create(name: "ProjectName", tag: "industry", industry: "bb", description: "but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,")
Project.create(name: "ProjectName", tag: "research", industry: "cc", description: "and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
AdminUser.create!(email: 'admin@berkeley.edu', password: 'password', password_confirmation: 'password')
