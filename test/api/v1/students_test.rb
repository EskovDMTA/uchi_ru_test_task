# frozen_string_literal: true

require 'test_helper'

class StudentsAPITest < ActiveSupport::TestCase
  include Rack::Test::Methods

  def setup
    @student = students(:one)
  end

  test 'should create students' do
    assert_difference('Student.count') do
      post '/students', { first_name: @student.first_name, last_name: @student.last_name, surname: @student.surname,
                          class_id: @student.school_class_id, school_id: @student.school_id }
    end
  end

  test 'should get auth token after registration student' do
    post '/students', { first_name: @student.first_name, last_name: @student.last_name, surname: @student.surname,
                        class_id: @student.school_class_id, school_id: @student.school_id }

    assert_predicate last_response.headers['x-auth-token'], :present?
  end

  test 'should not delete student with invalid authentication' do
    assert_no_difference('Student.count') do
      delete "/students/#{@student.id}"
    end
  end
end
