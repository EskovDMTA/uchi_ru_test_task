# frozen_string_literal: true

class Base < Grape::API
  include ErrorHandler
  format :json
end
