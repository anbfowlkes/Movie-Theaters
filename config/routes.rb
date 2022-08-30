Rails.application.routes.draw do

  root "theaters#index"

  get "/theaters/:id", to: "theaters#show"

end
