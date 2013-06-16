class Payment < ActiveRecord::Base
  belongs_to :student
  attr_accessible :amount, :student_id
end
