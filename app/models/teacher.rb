class Teacher < ApplicationRecord
  belongs_to :sport
  belongs_to :student
  belongs_to :subject
  belongs_to :activity
  belongs_to :dept


end
