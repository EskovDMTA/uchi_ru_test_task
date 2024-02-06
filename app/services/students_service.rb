class StudentsService
  def self.create_student(params)
    Student.create!(
      first_name: params[:first_name],
      last_name: params[:last_name],
      surname: params[:surname],
      school_class_id: params[:class_id],
      school_id: params[:school_id]
    )
  end

  def self.delete_student(user_id)
    student = Student.find(user_id)
    student.destroy
  end
end
