class Project < ActiveRecord::Base
  belongs_to :user
  belongs_to :budget

  def votes
    Vote.count(project_id: self.id)
  end
end
