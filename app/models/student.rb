class Student < ActiveRecord::Base
  has_many :subjects, :through => :enrolments
  has_many :enrolments
  has_many :payment
  attr_accessible :total_fee, :name, :number, 
  	              :school, :subject_ids, :email, 
  	              :telephone, :avatar

  has_attached_file :avatar, 
                    :styles => { 
                    	:medium => "300x300>", 
                    	:thumb => "100x100>", 
                    	:default_url => "/images/:style/missing.png",
}

  def total_fee
  	total_fee = subjects.collect {|subject| subject.fee}.sum
  end
end
