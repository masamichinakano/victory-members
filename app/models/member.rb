class Member < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :school_year
  belongs_to_active_hash :throwing
  belongs_to_active_hash :hitting

  has_one :user
  has_one :pitcher
  has_one :catcher
  has_one :first
  has_one :second
  has_one :third
  has_one :short
  has_one :left
  has_one :center
  has_one :right

  has_one_attached :image
end
