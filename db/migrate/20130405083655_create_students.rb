class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :number
      t.string :name
      t.string :school
      t.decimal :fee
      t.references :subject

      t.timestamps
    end
    add_index :students, :subject_id
  end
end
