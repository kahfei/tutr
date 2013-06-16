class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.references :student

      t.timestamps
    end
    add_index :payments, :student_id
  end
end
