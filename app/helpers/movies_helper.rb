module MoviesHelper
    def price(movie)
        if movie.free?
            "Free"
        else
            number_to_currency(movie.price, precision: 0)
        end
    end

    def total_gross(movie)
        if movie.flop?
          "Flop!"
        else
          number_to_currency(movie.total_gross, precision: 0)
        end
    end

    def year_of(movie)
        if movie.released_on.nil?
            "No Date"
        else
            movie.released_on.year
        end
    end

    def description(movie)
        truncate(movie.description, length: 60, separator: ' ')
    end
    
end
