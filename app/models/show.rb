require 'pry'

class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    show = self.where("rating = ?", Show.highest_rating)
    show[0]
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    show = self.where("rating = ?", Show.lowest_rating)
    show[0]
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    Show.order("name ASC")
  end

end
