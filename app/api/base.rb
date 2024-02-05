class Base < Grape::API
  format :json

  mount V1::Classes
  mount V1::Students
end

