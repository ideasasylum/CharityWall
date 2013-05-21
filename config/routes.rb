CharityWall::Application.routes.draw do
  resources :bricks

  root :to => 'bricks#index'

end
