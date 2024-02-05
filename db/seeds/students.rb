def create_students
  students = []
  5.times do |index|
    SchoolClass.all.each do |school_class|
      10.times do
        students << {
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          surname: Faker::Name.middle_name,
          school_class:,
          school_id: index + 1
        }
      end
    end
  end
  Student.create!(students)
  puts "Students created"
end

create_students
