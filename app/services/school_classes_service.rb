class SchoolClassesService
  def self.list_classes_for_school(school_id)
    data = SchoolClass.joins(:students).where(students: { school_id: }).distinct.order(:letter)
    { data: data }
  end

  def self.list_students_in_class(school_id, school_class_id)
    data = Student.where(school_id:, school_class_id:).order(:last_name)
    { data: data }
  end
end
