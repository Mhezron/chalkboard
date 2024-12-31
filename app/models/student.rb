class Student < ApplicationRecord
  belongs_to :dorm
  # vaidates :dorm, presence: true
end
