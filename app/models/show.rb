class Show < ActiveRecord::Base
  class << self
    def highest_rating
      Show.maximum("rating")
    end

    def most_popular_show
      Show.find_by rating: highest_rating
    end

    def lowest_rating
      Show.minimum("rating")
    end

    def least_popular_show
      Show.find_by rating: lowest_rating
    end

    def ratings_sum
      Show.sum("rating")
    end

    def popular_shows
      Show.where("rating > 5")
    end

    def shows_by_alphabetical_order
      Show.order(:name)
    end
  end
end
