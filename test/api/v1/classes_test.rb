require 'test_helper'

class ClassesAPITest < ActiveSupport::TestCase
  include Rack::Test::Methods

  test "should list classes for school" do
    get '/schools/1/classes'
    assert last_response.ok?
    # data = JSON.parse(last_response.body)
    # assert data['data'].is_a?(Array)
  end

  test "should list students in classes for school" do
    get '/schools/1/classes/2/students'
    assert last_response.ok?
    # data = JSON.parse(last_response.body)
    # assert data['data'].is_a?(Array)
  end
end
