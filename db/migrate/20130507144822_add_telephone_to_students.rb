class AddTelephoneToStudents < ActiveRecord::Migration
  def change
    add_column :students, :telephone, :string
  end
end
