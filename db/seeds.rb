# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

student = Student.create(
    first_name: 'Ida',
    last_name: 'Kronic Zaja',
    email: 'ikzaja@gmail.com'
)

20.times do |i|
    puts "Creating student#{i+1}"
    Student.create(
        first_name: "Student #{i+1}",
        last_name: "Lastname #{i+1}",
        email: "student#{i+1}@gmail.com"
    )
end

Student.all.each do |student|
    student.blogs.create(title: "Dummy blog for Student #{student.id}", content: "Custom content peding")
end

# student = Student.new(
#     first_name: 'Ida',
#     last_name: 'Kronic Zaja',
#     email: 'ikzaja@gmail.com'
# )

# student.save