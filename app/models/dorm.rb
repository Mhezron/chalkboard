class Dorm < ApplicationRecord
  has_many :students, dependent: :destroy
end
