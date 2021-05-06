class Movie < ApplicationRecord

    def free?
        total_gross.zero? || total_gross.blank?
    end

    def showtime
        movie.show_at.strftime("%B %d at %I:%M %P")
    end

    def flop?
        total_gross.blank? || total_gross < 25_000_000
    end


end
