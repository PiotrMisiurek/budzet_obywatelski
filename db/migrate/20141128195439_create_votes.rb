class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :project_id
      t.integer :budget_id

      t.timestamps
    end
  end
end
