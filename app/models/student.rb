class Student < ApplicationRecord
  belongs_to :dorm
  belongs_to :stream
  has_many :teachers, dependent: :destroy
  has_many :sports, through: :teachers
  has_many :subjects, through: :teachers
  has_many :activities, through: :teachers
  has_many :depts, through: :teachers

  # enum gender: { male: 0, female: 1, other: 2 }

  validates :student_fname, presence: true
  validates :student_lname, presence: true
  validates :dorm_id, presence: true
  validates :stream_id, presence: true
  validates :gender, presence: true
  validates :admission_no, presence: true
end
