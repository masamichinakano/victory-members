class Right < ApplicationRecord
  belongs_to :member
  has_many :defence

end
