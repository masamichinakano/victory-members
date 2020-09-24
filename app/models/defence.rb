class Defence < ApplicationRecord
  belongs_to :pitcher
  belongs_to :catcher
  belongs_to :first
  belongs_to :second
  belongs_to :third
  belongs_to :short
  belongs_to :left
  belongs_to :center
  belongs_to :right
end
