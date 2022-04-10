# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# use "", not '' next time ffs - to self
# queries for postgres
# \c employee_recognition_development | SELECT * FROM employees;
1.upto(5) do |i|
  Employee.create!(email: "employee#{i}@test.com", password: 'password')
end

Kudo.create!(title: 'consoled!', content: 'consoled too!', giver: Employee.find_by(email: 'employee1@test.com'), receiver: Employee.find_by(email: 'employee2@test.com'))