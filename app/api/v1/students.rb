module V1
  class Students < Grape::API
    resource :students do
      params do
        requires :first_name, type: String
        requires :last_name, type: String
        requires :surname, type: String
        requires :class_id, type: Integer
        requires :school_id, type: Integer
      end

      post do
        student = StudentsService.create_student(params)
        present student
      end

      params do
        requires :user_id, type: Integer
      end

      delete do
        StudentsService.delete_student(params)
      end

    end
  end
end
