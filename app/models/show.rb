class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    show = self.where("rating = highest_rating")s
    show.name
  end

end
