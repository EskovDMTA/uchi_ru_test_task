# frozen_string_literal: true

module V1
  class Classes < Grape::API
    resource :schools do
      route_param :school_id do
        resource :classes do
          get do
            school_classes = SchoolClassesService.list_classes_for_school(params[:school_id])
            present :data, school_classes[:data], with: Entities::SchoolClass
          end

          route_param :school_class_id do
            get :students do
              students = SchoolClassesService.list_students_in_class(params[:school_id], params[:school_class_id])
              present :data, students[:data], with: Entities::Student
            end
          end
        end
      end
    end
  end
end
