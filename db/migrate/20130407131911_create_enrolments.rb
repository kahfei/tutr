class CreateEnrolments < ActiveRecord::Migration
  def change
    create_table :enrolments do |t|
      t.references :student
      t.references :subject

      t.timestamps
    end
    add_index :enrolments, :student_id
    add_index :enrolments, :subject_id
  end
end
