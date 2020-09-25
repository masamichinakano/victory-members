class Defence < ApplicationRecord
  belongs_to :user
  has_many :members

  validates :pitcher_id, :catcher_id, :first_id, :second_id, :third_id, :short_id, :left_id, :center_id, :right_id, presence: true
  validates :pitcher_id, :catcher_id, :first_id, :second_id, :third_id, :short_id, :left_id, :center_id, :right_id, numericality: { other_than: 0 }

end
