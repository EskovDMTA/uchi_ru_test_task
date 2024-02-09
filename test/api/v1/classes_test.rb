# frozen_string_literal: true

require 'test_helper'

class ClassesAPITest < ActiveSupport::TestCase
  include Rack::Test::Methods

  def setup
    @school_class = school_classes(:one)
  end

  test 'should list classes for school' do
    get '/schools/1/classes'

    assert_predicate last_response, :ok?
    data = JSON.parse(last_response.body)

    assert_not_equal data['data'].count, 0
  end

  test 'should list students in classes for school' do
    get "/schools/1/classes/#{@school_class.id}/students"

    assert_predicate last_response, :ok?
    data = JSON.parse(last_response.body)

    assert_not_equal data['data'].count, 0
  end
end
