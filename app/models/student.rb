class Student < ActiveRecord::Base
  belongs_to :subject
  attr_accessible :fee, :name, :number, :school, :subject_id
end
