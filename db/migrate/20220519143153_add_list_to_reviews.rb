class AddListToReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :list, null: false, foreign_key: true
  end
end
