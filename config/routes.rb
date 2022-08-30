Rails.application.routes.draw do

  root "theaters#index"

  get "/theaters/:id", to: "theaters#show"

  get "/theaters/:id/movies/:movie_id/showtimes", to: "theaters#showtimes"

end
