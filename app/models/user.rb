class User < ApplicationRecord
  has_many :attendances
has_many :events, through: :attendances
belongs_to :event
end
