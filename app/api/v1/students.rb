module V1
  class Students < Grape::API
    helpers APIHelpers
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
        token = Authenticator.issue_token({ user_id: student.id })
        header 'X-Auth-Token', token
        status 201
        present student, with: Entities::Student
      end

      params do
        requires :user_id, type: Integer
      end
      delete ':user_id' do
        error!('Unauthorized', 401) unless authorized
        StudentsService.delete_student(params[:user_id])
      end

    end
  end
end
