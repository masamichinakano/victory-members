class Member < ApplicationRecord
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :school_year
  belongs_to_active_hash :throwing
  belongs_to_active_hash :hitting
  belongs_to_active_hash :first_position
  belongs_to_active_hash :second_position
  belongs_to_active_hash :third_position

  belongs_to :user
  has_one_attached :image

  validates :name, :tall, :weight, :throwing_id, :hitting_id, :first_position_id, presence: true

  validates :school_year_id, :throwing_id, :hitting_id, :first_position_id, numericality: { other_than: 0 }

end
