class Movie < ActiveRecord::Base
    def self.ratings
        Movie.uniq.pluck(:rating)
    end
    
    def self.all_ratings
        result = {}
        self.select(:rating).uniq.each do |movie|
            result[movie.rating] = ''
        end
        return result
    end
end
