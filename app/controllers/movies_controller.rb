class MoviesController < ApplicationController
    def index
        @movies = ["The Departed", "Oceans Eleven"]
    end
end
