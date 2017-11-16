class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  def review_average
    reviews.average(:rate).round if reviews.present?
  end
end
