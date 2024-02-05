def create_classes
  classes_numbers = (1..11).to_a
  mixed_language_letters = %w[A Б В]

  classes_to_create = []

    classes_numbers.each do |class_number|
      mixed_language_letters.each do |class_letter|
        classes_to_create << {number: class_number, letter: class_letter}
      end
    end
  SchoolClass.create!(classes_to_create)
  puts "Classes created"
end


create_classes
