Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  match '*path' => 'options_request#preflight', via: :options

  get 'echo', action: :echo, controller: 'echo'
#  match 'echo', via: :options, action: :echo, controller: 'echo'
end
