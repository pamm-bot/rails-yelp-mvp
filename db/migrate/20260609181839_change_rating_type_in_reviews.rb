class ChangeRatingTypeInReviews < ActiveRecord::Migration[8.1]
  def change
    change_column :reviews, :rating, :integer
  end
end
