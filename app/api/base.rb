class Base < Grape::API
  include ErrorHandler
  format :json

  mount V1::Classes
  mount V1::Students
end

