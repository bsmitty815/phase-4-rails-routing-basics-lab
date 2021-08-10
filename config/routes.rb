Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'students', to: 'students#index'

  get 'students/grades', to: 'students#grades'

  get 'students/highest-grade', to: 'students#highest_grade'


  #first you make the route 'get'
  #then you make the controller - rails g controller Students --no test framework

end
