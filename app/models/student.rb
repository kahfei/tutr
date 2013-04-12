class Student < ActiveRecord::Base
  has_many :subjects, :through => :enrolments
  has_many :enrolments
  attr_accessible :total_fee, :name, :number, :school, :subject_ids

  def total_fee
  	subjects.collect {|subject| subject.fee}.sum
  end
end
