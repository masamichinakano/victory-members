class Member < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :school_year
  belongs_to_active_hash :throwing
  belongs_to_active_hash :hitting

  belongs_to :user

  has_one_attached :image
end
