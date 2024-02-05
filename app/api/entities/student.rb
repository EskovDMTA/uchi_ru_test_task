module Entities
  class Student < Grape::Entity
    expose :id
    expose :first_name
    expose :last_name
    expose :surname
    expose :school_class_id
    expose :school_id
  end
end
