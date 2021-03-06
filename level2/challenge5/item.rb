class Item < ActiveRecord::Base
  has_many :reviews
  scope :recent, ->{
    where('published_on > ?', 2.days.ago)
      .joins(:reviews).where('reviews.approved = ?', true)
  }
end
