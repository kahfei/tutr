class Subject < ActiveRecord::Base
  has_many :students, :through => :enrolments
  has_many :enrolments
  attr_accessible :name
end
