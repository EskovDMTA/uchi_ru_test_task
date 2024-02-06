class SchoolClassesService
  def self.list_classes_for_school(school_id)
    data = SchoolClass.joins(:students).where(students: { school_id: }).distinct.order(:letter)
    raise ActiveRecord::RecordNotFound, "Classes not found for school with ID #{school_id}" if data.empty?
    { data: data }
  end

  def self.list_students_in_class(school_id, school_class_id)
    data = Student.where(school_id:, school_class_id:).order(:last_name)
    raise ActiveRecord::RecordNotFound, "Students not found in class with ID #{school_class_id} for school with ID #{school_id}" if data.empty?
    { data: data }
  end
end
