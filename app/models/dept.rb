class Dept < ApplicationRecord
  belongs_to :subject
  belongs_to :stream
end
