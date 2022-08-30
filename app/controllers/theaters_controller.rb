class TheatersController < ApplicationController

    def index
        theaters = Theater.all
        # render json: theaters
        render json: theaters.to_json(methods: [:movies])
    end

    # GET /theaters/:id
    def show
        theater = Theater.find_by(id: params[:id])
        render json: theater.to_json(methods: [:movies])
    end

    def showtimes
        theater = Theater.find_by!(id: params[:id])
        movie = Movie.find_by!(id: params[:movie_id])
        render json: {
            theater: theater,
            movie: movie.as_json(methods: [:showtimes])
        }
    end
    # to_json converts it to actual compressed json
    # as_json converts it to a ruby hash in json form, but its not actual json

end
