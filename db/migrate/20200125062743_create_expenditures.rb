class CreateExpenditures < ActiveRecord::Migration[5.2]
  def change
    create_table :expenditures do |t|
      t.string :expsubject, null: false
      t.integer :expamount, null: false
      t.timestamps
    end
  end
end
