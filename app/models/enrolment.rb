class Enrolment < ActiveRecord::Base
  belongs_to :student
  belongs_to :subject
  # attr_accessible :title, :body
end
