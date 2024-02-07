Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount V1::API => '/'
end
