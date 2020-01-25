class CreateIncomes < ActiveRecord::Migration[5.2]
  def change
    create_table :incomes do |t|
      t.string :incsubject, null: false
      t.integer :incamount, null: false
      t.timestamps
    end
  end
end
