class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.string :name
      t.text :description
      t.integer :amount
      t.integer :amount_per_project

      t.timestamps
    end
  end
end
