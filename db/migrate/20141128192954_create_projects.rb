class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :amount
      t.integer :budget_id
      t.integer :user_id

      t.timestamps
    end
  end
end
