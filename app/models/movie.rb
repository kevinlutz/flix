class Movie < ApplicationRecord

    def free?
        price.zero? || price.empty?
    end

end
