# frozen_string_literal: true

module Entities
  class SchoolClass < Grape::Entity
    expose :id
    expose :number
    expose :letter
  end
end
