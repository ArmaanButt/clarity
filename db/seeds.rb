# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  course.create!(course_name: 'Algorithms', course_code: 'MIE223',course_prof: 'Dionne Aleman' )
  course.create!(course_name: 'Numerical Methods', course_code: 'MIE423',course_prof: 'Nima Mathews' )
  course.create!(course_name: 'Business Process Engineering', course_code: 'MIE333',course_prof: 'Mariano Consens' )
  course.create!(course_name: 'Data Modelling', course_code: 'MIE511',course_prof: 'Mariano Consens' )
  course.create!(course_name: 'Operations Research', course_code: 'MIE355',course_prof: 'Dionne Aleman' )
  course.create!(course_name: 'Financial Enginering', course_code: 'MIE521',course_prof: 'Kwong Chang' )
