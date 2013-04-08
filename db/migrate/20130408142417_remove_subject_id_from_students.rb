class RemoveSubjectIdFromStudents < ActiveRecord::Migration
  def up
  	remove_column :students, :subject_id
  end

  def down
  	
  end
end
