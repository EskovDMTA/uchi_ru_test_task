class Base < Grape::API
  include ErrorHandler
  format :json
end

