class Left < ApplicationRecord
  belongs_to :member
  has_many :defence

end
