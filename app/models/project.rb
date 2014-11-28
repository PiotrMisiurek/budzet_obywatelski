class Project < ActiveRecord::Base
  belongs_to :user
  belongs_to :budget

  def votes
    Vote.where(project_id: self.id).count
  end
end
